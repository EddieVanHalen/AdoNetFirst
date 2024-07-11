namespace AdoTest.Model;

public class User
{
    public int Id { get; set; }
    public string Name { get; set; } = null!;
    public string Surname { get; set; } = null!;
    public int Age { get; set; }
    public string Login { get; set; } = null!;
    public string Password { get; set; } = null!;
}