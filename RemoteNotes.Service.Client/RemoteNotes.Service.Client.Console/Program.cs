using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR.Client;
using AngleSharp;
using AngleSharp.Parser.Html;
using System.Net;
using System.IO;
using System.Text.RegularExpressions;
using System.Text;
using System.Linq;
using Scrapper.BBC;

namespace RemoteNotes.Service.Client.Console
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
                // await Task.Delay(new Random().Next(0, 5) * 1000);
                await connection.StartAsync();
            };

            connection.On<string>("Notify", (message) =>
            {
                System.Console.Write($"Received notification: {message}");
            });

            Task.Run(async () => await ConnectAndSend(connection)).Wait();


            System.Console.ReadKey();
        }

        static async Task ConnectAndSend(HubConnection connection)
        {
            try
            {
                await connection.StartAsync();

                var scrapper = new UrlScrapper();

                connection.InvokeAsync("Send", articleText);

            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
        }
    }
}
