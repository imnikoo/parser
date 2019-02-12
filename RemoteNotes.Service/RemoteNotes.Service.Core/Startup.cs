using System;
using System.IO;
using System.Reflection;
using Common.DAL;
using Common.DAL.Contract;
using log4net;
using log4net.Config;
using log4net.Repository.Hierarchy;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using RemoteNotes.Core.BLL;
using RemoteNotes.Core.BLL.Contract;
using RemoteNotes.Service.Core.Controller;
using RemoteNotes.Service.Core.Hub;


namespace RemoteNotes.Service.Core
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            //https://stackoverflow.com/questions/42789450/iis-express-asp-net-core-invalid-uri-the-hostname-could-not-be-parsed
            //  services.AddCors();
            ILog log = log4net.LogManager.GetLogger(typeof(Logger));
            var logRepository = log4net.LogManager.CreateRepository(
                Assembly.GetEntryAssembly(), typeof(log4net.Repository.Hierarchy.Hierarchy));
            XmlConfigurator.Configure(logRepository, new FileInfo("Configuration\\log4net.config"));
            
            services.AddSignalR(hubOptions =>
            {
                hubOptions.EnableDetailedErrors = true;
                hubOptions.KeepAliveInterval = TimeSpan.FromMinutes(1);
            });

            //string connectionString = ConfigurationManager.ConnectionStrings["Notes"].ConnectionString;
            string connectionString = ConnectionStringReader.GetConnectionString(databaseName: "Notes", xmlFilePath: "Configuration/connectionStrings.config");

            IUnitOfWorkFactory unitOfWorkFactory = new RemoteNotes.DAL.MySql.UnitOfWorkFactory(connectionString, false);
            IManagerFactory managerFactory = new ManagerFactory(unitOfWorkFactory);

            services.AddSingleton<ILog>(log);
            services.AddSingleton<IManagerFactory>(managerFactory);
            services.AddSingleton<HubEnvironment>();
        }

        public void Configure(IApplicationBuilder app)
        {
            app.UseSignalR(routes =>
            {
                routes.MapHub<CustomerHub>("/notes");
            });
        }
    }
}
