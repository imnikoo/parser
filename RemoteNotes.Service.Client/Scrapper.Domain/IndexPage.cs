using System;
using System.Collections.Generic;
using System.Text;

namespace SearchEngine.Domain
{
    public class IndexPage
    {
        public int IndexId { get; set; }
        public int PageId { get; set; }

        public Index Index { get; set; }
        public Page Page { get; set; }
    }
}
