using AdoTest.Model;

namespace AdoTest.Interfaces;

public interface IDataBase
{
    Task<IList<User>> ReadAllUserDataAsync();

    Task<bool> AddUserAsync(User user);
}