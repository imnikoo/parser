using Common.DAL;
using Common.DAL.Contract;
using RemoteNotes.DAL.MySql;

namespace RemoteNotes.DAL.IntegrationTest.Context
{
    /// <summary>
    /// The testing context.
    /// </summary>
    public class TestingContext
    {
        /// <summary>
        /// The dal manager factory.
        /// </summary>
        private static IUnitOfWork unitOfWork;

        static TestingContext()
        {

            string connectionString =
                ConnectionStringReader.GetConnectionString(databaseName:"Notes", xmlFilePath:"Configuration/connectionStrings.config");

            IUnitOfWorkFactory unitOfWorkFactory = new UnitOfWorkFactory(connectionString, false);
            unitOfWork = unitOfWorkFactory.CreateUnitOfWork();
        }

        /// <summary>
        /// The get dal manager factory.
        /// </summary>
        /// <returns>
        /// The <see cref="IDalManagerFactory"/>.
        /// </returns>
        public static IUnitOfWork GetUnitOfWork()
        {
            return unitOfWork;
        }
    }
}
