using AngleSharp.Parser.Html;
using FluentScheduler;
using SearchEngine.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace SearchEngine.Core
{
    public class UrlParser
    {
        public Queue<string> URLQueue { get; set; }
        public Action<string, ICollection<string>, string> onParse { get; set; }

        public UrlParser()
        {
            URLQueue = new Queue<string>();
            JobManager.AddJob(parseNextUrl, s => s.ToRunNow().AndEvery(30).Seconds());
        }

        public void AddToQueue(ICollection<string> urls)
        {
            Console.WriteLine("[Parser]: Added - " + urls.Count() +" urls");
            urls.ToList().ForEach(u =>
            {
                if (Uri.IsWellFormedUriString(u, UriKind.Absolute))
                {
                    URLQueue.Enqueue(u);
                }
            });
        }

        public void AddToQueue(string url)
        {
            if (Uri.IsWellFormedUriString(url, UriKind.Absolute))
            {
                URLQueue.Enqueue(url);
            }
        }

        public void parseNextUrl()
        {
            if (this.URLQueue.Count == 0) return;
            var nextUrl = this.URLQueue.Dequeue();
            var text = ElementParser.Parse(nextUrl);
            var keys = GetFrequencyList(text);
            Console.WriteLine("[Parsed]: " + nextUrl);

            this.onParse(nextUrl, keys, text);
        }

        public ICollection<string> GetFrequencyList(string text)
        {
            char[] delimiterChars = { ' ', ',', '.', ':', '\t' };
            var stopWords = new List<string>() { "i", "said", "mr", "me", "my", "myself", "we", "our", "ours", "ourselves", "you", "your", "yours", "yourself", "yourselves", "he", "him", "his", "himself", "she", "her", "hers", "herself", "it", "its", "itself", "they", "them", "their", "theirs", "themselves", "what", "which", "who", "whom", "this", "that", "these", "those", "am", "is", "are", "was", "were", "be", "been", "being", "have", "has", "had", "having", "do", "does", "did", "doing", "a", "an", "the", "and", "but", "if", "or", "because", "as", "until", "while", "of", "at", "by", "for", "with", "about", "against", "between", "into", "through", "during", "before", "after", "above", "below", "to", "from", "up", "down", "in", "out", "on", "off", "over", "under", "again", "further", "then", "once", "here", "there", "when", "where", "why", "how", "all", "any", "both", "each", "few", "more", "most", "other", "some", "such", "no", "nor", "not", "only", "own", "same", "so", "than", "too", "very", "s", "t", "can", "will", "just", "don", "should", "now" };
            var punctuation = text.Where(Char.IsPunctuation).Distinct().ToArray();

            var removedStopWords = new Regex("[, ]+").Replace(text, " ")
                .Split(delimiterChars)
                .Select(x => x.Trim(punctuation))
                .Select(x => x.ToLower())
                .Where(x => !stopWords.Contains(x) && x.Length > 1);
            
            var frequenceyList = removedStopWords
                .GroupBy(x => x)
                .ToDictionary(x => x.Key, x => x.Count())
                .OrderBy(x => x.Value)
                .Reverse()
                .Take(10)
                .Select(x => x.Key).ToList();

            return frequenceyList;
        }
    }
}
