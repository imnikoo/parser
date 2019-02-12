using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using Common.DAL.Contract;
using MySql.Data.MySqlClient;

namespace RemoteNotes.DAL.MySql
{
    public class SqlDataManager : ISqlDataManager
    {
        /// <summary>
        /// The connection string.
        /// </summary>
        protected string connectionString = string.Empty;

        private DatabaseContext databaseContext;

        public SqlDataManager(DatabaseContext databaseContext)
        {
            this.databaseContext = databaseContext;
            this.connectionString = databaseContext.ConnectionString;
        }

        public void ExecuteCommand(string queryCommand, bool commit)
        {
            if (commit)
            {
                using (MySqlConnection connection = new MySqlConnection(this.connectionString))
                {
                    connection.Open();
                    MySqlCommand command = new MySqlCommand(queryCommand);
                    command.Connection = connection;
                    command.ExecuteNonQuery();
                }
            }
            else
            {
                IDbCommand command = databaseContext.CreateCommand();
                command.CommandText = queryCommand;
                command.ExecuteNonQuery();
            }
        }

        public IDbCommand GetCommand(string commandText)
        {
            return new MySqlCommand(commandText);
        }

        public void ExecuteCommand(IDbCommand command, bool commit)
        {
            if (commit)
            {
                using (MySqlConnection connection = new MySqlConnection(this.connectionString))
                {
                    connection.Open();
                    command.Connection = connection;
                    command.ExecuteNonQuery();
                }
            }
            else
            {
                databaseContext.AddCommand(command);
                command.ExecuteNonQuery();
            }
        }

        public T GetById<T>(string query, int id)
        {
            MySqlCommand command = new MySqlCommand(query);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("Id", id);
            command.Parameters[0].Direction = ParameterDirection.Input;

            List<T> collection = this.ExecuteReader<T>(command);

            if (collection.Count == 0)
            {
                string nameOfType = typeof(T).Name;
                string message = string.Format($"Element {id} of type {nameOfType} is not found");
                throw new Exception(message);
            }
            else
            {
                return collection[0];
            }
        }

        public async Task<T> GetByIdAsync<T>(string query, int id)
        {
            MySqlCommand command = new MySqlCommand(query);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("Id", id);
            command.Parameters[0].Direction = ParameterDirection.Input;

            List<T> collection = await this.ExecuteReaderAsync<T>(command);

            if (collection.Count == 0)
            {
                string nameOfType = typeof(T).Name;
                string message = string.Format($"Element {id} of type {nameOfType} is not found");
                throw new Exception(message);
            }
            else
            {
                return collection[0];
            }
        }

        public async Task<List<T>> ExecuteReaderAsync<T>(IDbCommand command)
        {
            using (MySqlConnection connection = new MySqlConnection(this.connectionString))
            {
                connection.Open();
                command.Connection = connection;
                using (var reader = await ((MySqlCommand)command).ExecuteReaderAsync())
                {
                    return reader.Select(r => this.Process<T>(r)).ToList();
                }
            }
        }

        public List<T> ExecuteReader<T>(IDbCommand command)
        {
            List<T> collection = new List<T>();

            using (MySqlConnection connection = new MySqlConnection(this.connectionString))
            {
                connection.Open();
                command.Connection = connection;
                IDataReader reader = command.ExecuteReader();

                collection = this.ProcessRead<T>(reader);
            }

            return collection;
        }

        /// <summary>
        /// The get data table.
        /// </summary>
        /// <param name="tableName">
        /// The table name.
        /// </param>
        /// <returns>
        /// The <see cref="DataTable"/>.
        /// </returns>
        public List<T> GetCollection<T>(string tableName)
        {
            try
            {
                List<T> collection = new List<T>();

                using (MySqlConnection connection = new MySqlConnection(this.connectionString))
                {
                    connection.Open();

                    if (connection.State == ConnectionState.Open)
                    {

                        MySqlCommand cmd = new MySqlCommand("select * from " + tableName, connection);
                        MySqlDataReader reader = cmd.ExecuteReader();

                        collection = this.ProcessRead<T>(reader);
                    }
                }

                return collection;
            }
            catch (Exception ex)
            {
                string message = $"Get data table failed. Table:{tableName}";
                throw new Exception(message, ex);
            }
        }

        public List<T> DoQuery<T>(string query)
        {
            try
            {
                List<T> collection = new List<T>();

                using (MySqlConnection connection = new MySqlConnection(this.connectionString))
                {
                    connection.Open();

                    if (connection.State == ConnectionState.Open)
                    {

                        MySqlCommand cmd = new MySqlCommand(query, connection);
                        MySqlDataReader reader = cmd.ExecuteReader();

                        collection = this.ProcessRead<T>(reader);
                    }
                }

                return collection;
            }
            catch (Exception ex)
            {
                string message = $"Get data table failed. Connection:{this.connectionString} Table:{query}";
                throw new Exception(message, ex);
            }
        }

        protected virtual List<T> ProcessRead<T>(IDataReader reader)
        {
            List<T> collection = new List<T>();
            
            while (reader.Read())
            {
               T element = this.Process<T>(reader);
                collection.Add((T) element);
            }

            return collection;
        }

        protected virtual T Process<T>(IDataReader reader)
        {            
            Type type = typeof(T);
            PropertyInfo[] p = type.GetProperties();
            T element = (T)Activator.CreateInstance(type);

            foreach (PropertyInfo pi in p)
            {
                try
                {
                    if (reader[pi.Name.ToLower()] != System.DBNull.Value)
                    {
                        pi.SetValue(element, reader[pi.Name], null);
                    }
                }
                catch (System.IndexOutOfRangeException) { }
            }

            return element;
        }

        public List<T> DoQuery<T>(string query, Dictionary<string, object> parameterCollection)
        {
            try
            {
                List<T> collection = new List<T>();

                using (MySqlConnection connection = new MySqlConnection(this.connectionString))
                {
                    connection.Open();
                    MySqlCommand command = new MySqlCommand(query, connection);
                    command.CommandType = CommandType.StoredProcedure;

                    foreach (KeyValuePair<string, object> kvp in parameterCollection)
                    {
                        command.Parameters.AddWithValue(kvp.Key, kvp.Value);
                    }

                    MySqlDataReader reader = command.ExecuteReader();

                    collection = this.ProcessRead<T>(reader);
                }

                return collection;
            }
            catch (Exception ex)
            {
                string message = $"Get data table failed. Connection:{this.connectionString} Table:{query}";
                throw new Exception(message, ex);
            }
        }

        public void AddParameter(IDbCommand sqlCommand, string parameterName, object value, ParameterDirection direction = ParameterDirection.Input)
        {
            ((MySqlCommand)sqlCommand).Parameters.AddWithValue(parameterName, value).Direction = direction;
        }

        public object GetValue(IDbCommand sqlCommand, string parameterName)
        {
            return ((MySqlCommand) sqlCommand).Parameters[parameterName].Value;
        }
    }
}
