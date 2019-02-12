using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Common.DAL.Contract;
using Common.Domain;

namespace RemoteNotes.DAL.MySql
{
    /// <summary>
    /// The dal manager base.
    /// </summary>
    /// <typeparam name="T">
    /// </typeparam>
    public abstract class RepositoryBase<T> : IRepository<T> where T : Identifiable
    {
        /// <summary>
        /// Sql helper from Common.DAL.Sql library. More flexible solution needs TypeController.Instance.GetObjectOfType<ISqlDataManager>() resolution.
        /// </summary>
        protected ISqlDataManager sqlDataManager;

        /// <summary>
        /// Contains the connection string.
        /// </summary>
        protected string connectionString = string.Empty;

        /// <summary>
        /// The concept name.
        /// </summary>
        protected string conceptName;

        public RepositoryBase(ISqlDataManager sqlDataManager)
        {
            this.sqlDataManager = sqlDataManager;
            this.conceptName = typeof(T).Name ;
        }

        /// <summary>
        /// The get.
        /// </summary>
        /// <param name="id">
        /// The id.
        /// </param>
        /// <returns>
        /// The <see cref="T"/>.
        /// </returns>
        public virtual T GetById(int id)
        {
            string queryCommand = string.Format("Get{0}ById", this.conceptName);

            return this.sqlDataManager.GetById<T>(queryCommand, id);
        }

        public async Task<T> GetByIdAsync(int id)
        {
            string queryCommand = string.Format("Get{0}ById", this.conceptName);

            return await this.sqlDataManager.GetByIdAsync<T>(queryCommand, id);
        }

        /// <summary>
        /// The update.
        /// </summary>
        /// <param name="element">
        /// The element.
        /// </param>
        public virtual void Update(T element, bool commit = true)
        {
            // Define the procedure.
            string queryCommand = string.Format("Update{0}", this.conceptName);
            IDbCommand sqlCommand = this.sqlDataManager.GetCommand(queryCommand);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            // Set the parameters.
            this.sqlDataManager.AddParameter(sqlCommand, @"Id", element.Id, ParameterDirection.Output);
            this.AddInputParameterCollection(sqlCommand, element);

            // Execute the procedure.
            this.sqlDataManager.ExecuteCommand(sqlCommand, commit);
        }

        /// <summary>
        /// The add.
        /// </summary>
        /// <param name="element">
        /// The element.
        /// </param>
        public virtual void Add(T element, bool commit = true)
        {
            // Define the procedure.
            string queryCommand = string.Format("Add{0}", this.conceptName);
            IDbCommand sqlCommand = this.sqlDataManager.GetCommand(queryCommand);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            // Set the parameters.
            this.AddInputParameterCollection(sqlCommand, element);

            this.sqlDataManager.AddParameter(sqlCommand, @"Id", 4, ParameterDirection.Output);

            // Execute procedure.
            this.sqlDataManager.ExecuteCommand(sqlCommand, commit);

            // The result is id of the object just added.
            int id = Convert.ToInt32(this.sqlDataManager.GetValue(sqlCommand, "@Id"));

            // Set the object's unique identifier.
            element.Id = id;
        }

        protected abstract void AddInputParameterCollection(IDbCommand sqlCommand, T element);

        /// <summary>
        /// The delete.
        /// </summary>
        /// <param name="element">
        /// The element.
        /// </param>
        public virtual void Delete(T element)
        {
            this.Delete(element.Id);
        }

        /// <summary>
        /// The delete.
        /// </summary>
        /// <param name="id">
        /// The id.
        /// </param>
        public void Delete(int id, bool commit = true)
        {
            // Define the procedure.
            string commandText = string.Format("Delete{0}", this.conceptName);
            IDbCommand sqlCommand = this.sqlDataManager.GetCommand(commandText);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            // Define the parameters.
            this.sqlDataManager.AddParameter(sqlCommand, @"Id", id);

            // Execute the procedure.
            this.sqlDataManager.ExecuteCommand(sqlCommand, commit);
        }

        /// <summary>
        /// The get collection.
        /// </summary>
        /// <returns>
        /// The <see cref="List{T}"/>.
        /// </returns>
        public virtual List<T> GetCollection()
        {
            // Make query command
            string queryCommand = string.Format("select * from `{0}s`", this.conceptName);

            return this.DoQuery(queryCommand);
        }



        public void Clear(bool commit = true)
        {
            // Make query command
            string queryCommand = string.Format("delete from `{0}s`", this.conceptName);
            this.sqlDataManager.ExecuteCommand(queryCommand, true);
        }

        /// <summary>The get collection.</summary>
        /// <param name="topNumber">The top number.</param>
        /// <returns>The <see cref="List{T}"/>.</returns>
        public List<T> GetCollection(int topNumber)
        {
            string queryCommand = string.Format("select top {0} from `{1}s`", topNumber, this.conceptName);

            return this.DoQuery(queryCommand);
        }

        /// <summary>
        /// The do query.
        /// </summary>
        /// <param name="queryCommand">
        /// The query command.
        /// </param>
        /// <param name="parameterCollection">
        /// The parameter collection.
        /// </param>
        /// <returns>
        /// The <see cref="List"/>.
        /// </returns>
        protected List<T> DoQuery(string queryCommand, Dictionary<string, object> parameterCollection)
        {

            // Execute query.
            return this.sqlDataManager.DoQuery<T>(queryCommand, parameterCollection);
        }

        /// <summary>
        /// The do query.
        /// </summary>
        /// <param name="queryCommand">
        /// The query command.
        /// </param>
        /// <returns>
        /// The <see cref="List{T}"/>.
        /// </returns>
        protected List<T> DoQuery(string queryCommand)
        {
            // Execute query.
            return this.sqlDataManager.DoQuery<T>(queryCommand);
        }
    }
}
