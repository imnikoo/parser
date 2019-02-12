using AngleSharp.Parser.Html;
using FluentScheduler;
using SearchEngine.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SearchEngine.Core
{
    public class UrlScrapper
    {
        public string BaseUrl { get; set; }
        public Queue<string> URLQueue { get; set; }

        public Action<string, IEnumerable<string>> onParse { get; set; }

        public UrlScrapper(string baseUrl)
        {
            this.BaseUrl = baseUrl;
            URLQueue = new Queue<string>();
        }

        public void Start()
        {
            if(URLQueue.Count == 0)
            {
                URLQueue.Enqueue(this.BaseUrl);
            }
            JobManager.AddJob(getLinks, s => s.ToRunNow().AndEvery(1).Minutes());
        }

        public void ForceStart()
        {
            this.getLinks();
        }

        public void AddToQueue(string url)
        {
            if (!Uri.IsWellFormedUriString(url, UriKind.Absolute)) return;
            URLQueue.Enqueue(url);
        }

        public void AddToQueue(IEnumerable<string> urls)
        {
            Console.WriteLine("[Scrapper]: Added - " + urls.Count() + " links");

            urls.ToList().ForEach(u =>
            {
                if (Uri.IsWellFormedUriString(u, UriKind.Absolute))
                {
                    URLQueue.Enqueue(u);
                }
            });
        }

        public void getLinks()
        {
            if (this.URLQueue.Count == 0) return;
            var nextUrl = this.URLQueue.Dequeue();
            var html = HTML.FetchHTML(nextUrl);
            var parser = new HtmlParser();
            var document = parser.Parse(html);

            var links = document
                    .QuerySelectorAll("a")
                    .Select(x => x.GetAttribute("href"))
                    .Select(x =>
                    {
                        if (!Uri.IsWellFormedUriString(x, UriKind.Absolute))
                        {
                            return BaseUrl + x;
                        }
                        return x;
                    })
                    .Where(x => Uri.IsWellFormedUriString(x, UriKind.Absolute));

            Console.WriteLine("[Scrapped]: " + nextUrl + ". Links amount: " + links.Count() + ".");
            this.onParse(nextUrl, links);
        }
    }
}
