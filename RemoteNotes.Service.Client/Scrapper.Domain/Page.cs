using System;
using System.Collections.Generic;
using System.Text;

namespace SearchEngine.Domain
{
    public class Page : Base
    {
        public string URL { get; set; }
        public string Text { get; set; }

        public bool Parsed { get; set; }
        public bool Scrapped { get; set; }

        public virtual ICollection<IndexPage> IndexPages { get; set; }

        public Page()
        {
            IndexPages = new List<IndexPage>();
        }
        
        public override string ToString()
        {
            return URL;
        }
    }
}
