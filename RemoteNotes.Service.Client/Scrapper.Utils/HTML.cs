using AngleSharp.Dom;
using AngleSharp.Dom.Html;
using AngleSharp.Parser.Html;
using System;
using System.IO;
using System.Net;

namespace SearchEngine.Utils
{
    public class HTML
    {
        public static string FetchHTML(string url)
        {
            try
            {
                WebClient client = new WebClient();
                client.Headers.Add("user-agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.2526.73 Safari/537.36");
                Stream data = client.OpenRead(url);
                StreamReader reader = new StreamReader(data);
                string html = reader.ReadToEnd();
                data.Close();
                reader.Close();
                return html;
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return String.Empty;
        }
    }
}
