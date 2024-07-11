using System.Data.SqlClient;
using AdoTest.Interfaces;
using AdoTest.Model;

namespace AdoTest.Services;

public class SqlDbService : IDataBase
{
    private SqlConnection _connection;

    public SqlDbService(string connectionString)
    {
        _connection = new SqlConnection(connectionString);
    }

    public async Task<IList<User>?> ReadAllUserDataAsync()
    {
        var sqlQuery = @"SELECT * FROM Users";

        var command = new SqlCommand(sqlQuery, _connection);

        SqlDataReader? reader = null;

        IList<User> users = new List<User>();

        try
        {
            await _connection.OpenAsync();

            reader = await command.ExecuteReaderAsync();

            while (await reader.ReadAsync())
            {
                var id = (int)reader["Id"];
                var name = reader["Name"].ToString();
                var surname = reader["Surname"].ToString();
                var age = (int)reader["Age"];
                var login = reader["Login"].ToString();
                var password = reader["Password"].ToString();

                users.Add(new User()
                {
                    Id = id,
                    Name = name!,
                    Surname = surname!,
                    Age = age,
                    Login = login!,
                    Password = password!
                });
            }
        }
        finally
        {
            await reader!.DisposeAsync();
            await _connection.CloseAsync();
        }

        return users;
    }

    public async Task<bool> AddUserAsync(User user)
    {
        try
        {
            var sqlQuery = @"INSERT INTO Users (Name, Surname, Age, Login, Password) values (@Name, @Surname, @Age, @Login, @Password)";

            var command = new SqlCommand(sqlQuery, _connection);

            command.Parameters.Add("@Name", System.Data.SqlDbType.NVarChar).Value = user.Name;
            command.Parameters.Add("@Surname", System.Data.SqlDbType.NVarChar).Value = user.Surname;
            command.Parameters.Add("@Age", System.Data.SqlDbType.Int).Value = user.Age;
            command.Parameters.Add("@Login", System.Data.SqlDbType.NVarChar).Value = user.Login;
            command.Parameters.Add("@Password", System.Data.SqlDbType.NVarChar).Value = user.Password;

            await _connection.OpenAsync();

            await command.ExecuteNonQueryAsync();

        }
        catch (Exception e)
        {
            await _connection.CloseAsync();
            return false;
        }
        finally
        {
            await _connection.CloseAsync();
        }
        return true;
    }
}