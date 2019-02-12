using System;
using System.Collections.Generic;
using System.Text;

namespace SearchEngine.Domain
{
    public class Index : Base
    {
        public string Value { get; set; }

        public virtual ICollection<IndexPage> IndexPages { get; set; }

        public Index()
        {
            IndexPages = new List<IndexPage>();
        }
    }
}
