using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;

namespace RemoteNotes.Service.Core.Console
{
    class Program
    {
       public static void Main(string[] args)
        {
            //https://docs.microsoft.com/en-us/aspnet/core/host-and-deploy/windows-service?view=aspnetcore-2.1
            CreateWebHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                //.ConfigureLogging(logging => {
                //    logging.AddFilter("Microsoft.AspNetCore.SignalR", LogLevel.Debug);
                //    //logging.AddFilter("Microsoft.AspNetCore.Http.Connections", LogLevel.Debug);
                //})
                   .UseStartup<Startup>()
                   .UseUrls("http://localhost:61234/");
    }
}
