using System;
using RemotesNotes.Service.Client.Contract;

namespace RemoteNotes.Service.Client.UAT.Context
{
    public class TestingContext
    {
        public static Exception LastException { get; set; } = null;

        private static IFrontServiceClient frontServiceClient;

        static TestingContext()
        {
            //string clientDescription = ConfigurationManager.AppSettings["client"];
            //string[] clientDescriptionArray = clientDescription.Split(',');

            //string clientAssembly = clientDescriptionArray[0].Trim();
            //string clientType = clientDescriptionArray[1].Trim();

            //Assembly assembly = Assembly.LoadFrom(clientAssembly + ".dll");
            //Type type = assembly.GetType(clientType);

            //object[] parameters = null;

            //frontServiceClient = (IFrontServiceClient)Activator.CreateInstance(type, parameters);
            //frontServiceClient = new FrontServiceClient();
            frontServiceClient = FrontServiceClientCreator.Create();

        }

        public static void Clear()
        {
            LastException = null;
        }

        public static IFrontServiceClient GetFrontServiceClient()
        {
            Clear();
            return frontServiceClient;
        }
    }
}
