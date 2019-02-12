using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace Common.DAL.Contract
{
    public interface ISqlDataManager
    {
        void ExecuteCommand(string queryCommand, bool commit);
        IDbCommand GetCommand(string commandText);
        void ExecuteCommand(IDbCommand command, bool commit);
        T GetById<T>(string query, int id);
        List<T> ExecuteReader<T>(IDbCommand command);

        /// <summary>
        /// The get data table.
        /// </summary>
        /// <param name="tableName">
        /// The table name.
        /// </param>
        /// <returns>
        /// The <see cref="DataTable"/>.
        /// </returns>
        List<T> GetCollection<T>(string tableName);

        List<T> DoQuery<T>(string query);
        List<T> DoQuery<T>(string query, Dictionary<string, object> parameterCollection);
        void AddParameter(IDbCommand sqlCommand, string parameterName, object value, ParameterDirection direction = ParameterDirection.Input);
        object GetValue(IDbCommand sqlCommand, string parameterName);
        Task<T> GetByIdAsync<T>(string queryCommand, int id);
    }
}