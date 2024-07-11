using System.Windows;
using AdoTest.Interfaces;
using AdoTest.Messages;
using AdoTest.Model;
using AdoTest.Services;
using AdoTest.View;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace AdoTest.ViewModel;

[INotifyPropertyChanged]
public partial class MainPageViewModel : BaseViewModel
{
    [ObservableProperty] private string? _login;
    [ObservableProperty] private string? _password;

    private IMessageBox _mbox;

    public IDataBase Db { get; set; }

    public MainPageViewModel()
    {
        var config = App.Provider.GetService<ConfigurationBuilder>()!.AddJsonFile("configuration.json").Build();

        Db = new SqlDbService(config["ConnectionString"]!);

        _mbox = App.Provider.GetService<MyMessageBox>() ?? throw new NullReferenceException();
    }

    [RelayCommand]
    private async Task SignIn()
    {
        if (string.IsNullOrWhiteSpace(Login) || string.IsNullOrWhiteSpace(Login))
        {
            _mbox.Show("Something Went Wrong");
            return;
        }

        var users = await Db.ReadAllUserDataAsync();

        foreach (var user in users)
        {
            if (user.Login == Login && user.Password == Password)
            {
                var model = App.Provider.GetService<MyPageViewModel>()!;
                model.Name = "Welcome " + user.Name + " " + user.Surname;
                var message = new ChangeViewModelMessage(model);
                WeakReferenceMessenger.Default.Send(message);
                Login = null;
                Password = null;
                return;
            }
        }

        _mbox.Show("User Not Found");
        Login = null;
        Password = null;
    }

    [RelayCommand]
    private void SignUp()
    {
        var model = App.Provider.GetService<SignUpViewModel>()!;
        model.Db = Db;
        model.Mbox = _mbox;
        var message = new ChangeViewModelMessage(model);
        WeakReferenceMessenger.Default.Send(message);

        Login = "";
        Password = "";
    }
}