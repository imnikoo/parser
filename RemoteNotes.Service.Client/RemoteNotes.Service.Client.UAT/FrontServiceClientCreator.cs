using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.Service.Client.UAT
{
    class FrontServiceClientCreator
    {
        public static IFrontServiceClient Create()
        {
            return new FrontServiceClient();
        }
    }
}
