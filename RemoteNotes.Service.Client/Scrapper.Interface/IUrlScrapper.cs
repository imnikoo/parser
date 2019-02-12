using System;
using System.Collections.Generic;
using System.Text;
using AngleSharp.Dom;

namespace Scrapper.Interface
{
    public interface IUrlScrapper
    {
        IEnumerable<string> FetchURLs(string url);
    }
}
