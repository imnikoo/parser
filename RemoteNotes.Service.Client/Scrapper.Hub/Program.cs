using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR.Client;
using Microsoft.EntityFrameworkCore;
using SearchEngine.Core;
using SearchEngine.DAL;
using SearchEngine.Domain;

namespace Scrapper.Hub
{
    class Program
    {
        // https://docs.microsoft.com/en-us/aspnet/core/signalr/dotnet-client?view=aspnetcore-2.1
        static void Main(string[] args)
        {
            HubConnection connection = new HubConnectionBuilder()
                .WithUrl("http://localhost:61234/notes")
                .Build();

            connection.Closed += async (error) =>
            {
                await connection.StartAsync();
            };

            connection.On<string>("Notify", (message) =>
            {
                System.Console.Write($"Received notification: {message}");
            });

            // Task.Run(async () => await ConnectAndSend(connection)).Wait();
     
            Task.Run(async () => await RecieveAllTextsByWord(connection, "car")).Wait();

            System.Console.ReadKey();
        }

        static async Task RecieveAllTextsByWord(HubConnection connection, String word)
        {
            await connection.StartAsync();
            var indexesRepo = new IndexPageRepository();

            var pages = indexesRepo.GetEntities().Where(x => x.Index.Value.Contains(word));
            var paaa = pages.Select(x => x.Page).ToList();

            Console.WriteLine("[Search]: all links by word: " + word);
            paaa.ForEach(x =>
            {
                Console.WriteLine(x);
            });

        } 

        static async Task ConnectAndSend(HubConnection connection)
        {
            try
            {
                await connection.StartAsync();
                var baseUrl = "https://www.bbc.com/";
                var scrapper = new UrlScrapper(baseUrl);
                var parser = new UrlParser();

                var pagesRepo = new PageRepository();
                var indexesRepo = new IndexRepository();

                var isThereAnyPage = pagesRepo.GetEntities().Count() != 0;
                if(!isThereAnyPage)
                {
                    pagesRepo.Create(new Page() { URL = baseUrl });
                    pagesRepo.Save();
                }
                var pages = pagesRepo.GetEntities();
                scrapper.AddToQueue(pages.Where(x => !x.Scrapped).Select(x => x.URL).ToList());
                parser.AddToQueue(pages.Where(x => !x.Parsed).Select(x => x.URL).ToList());

                //
                scrapper.Start();
                //

                scrapper.onParse += (scrappedUrl, links) =>
                {
                    var scrappedPage = pages.First(x => x.URL == scrappedUrl);
                    if (scrappedPage.Scrapped) return;
                    scrappedPage.Scrapped = true;

                    foreach (var link in links)
                    {
                        var page = pages.FirstOrDefault(x => x.URL == link);

                        if (page is null)
                        {
                            parser.AddToQueue(link);
                            scrapper.AddToQueue(link);

                            var newPage = new Page() { URL = link };

                            pagesRepo.Create(newPage);
                        }
                    }
                    pagesRepo.Save();
                };

                parser.onParse += (parsedUrl, keys, text) =>
                {
                    var page = pages.FirstOrDefault(p => p.URL == parsedUrl);
                    if (page.Parsed) return;
                    page.Text = text;
                    page.Parsed = true;

                    var indexes = new List<Index>();
                    keys.ToList().ForEach(key =>
                    {
                        var index = indexesRepo.GetEntities().FirstOrDefault(i => i.Value.Contains(key));

                        if (index is null)
                        {
                            index = new Index() { Value = key };
                            page.IndexPages.Add(new IndexPage() { PageId = page.Id, Index = index });
                            pagesRepo.Update(page);
                        }
                        else
                        {
                            var ip = page.IndexPages.FirstOrDefault(x => x.IndexId == index.Id && x.PageId == page.Id);
                            if (ip != null) return;
                             
                            page.IndexPages.Add(new IndexPage() { PageId = page.Id, IndexId = index.Id });
                            pagesRepo.Update(page);
                        }
                        indexesRepo.Save();
                    });
                };
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
        }

        static async Task ConnectAndSendOld(HubConnection connection)
        {
            try
            {
                await connection.StartAsync();
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
        }
    }
}
