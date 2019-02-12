using AngleSharp.Dom;
using AngleSharp.Parser.Html;
using AngleSharp.Extensions;
using System;
using System.Linq;
using System.Text;

namespace SearchEngine.Utils
{
    public class ElementParser
    {
        public static string Parse(string elementUrl)
        {
            var html = HTML.FetchHTML(elementUrl);
            var parser = new HtmlParser();
            var document = parser.Parse(html);

            var text = parser.Parse(html)
                    .QuerySelectorAll("p, h1, h2, h3, h4")
                    .Select(x => x.Text())
                    .Aggregate(new StringBuilder(), (acc, x) => acc.Append(x))
                    .ToString();

            return text;
        }
    }
}
