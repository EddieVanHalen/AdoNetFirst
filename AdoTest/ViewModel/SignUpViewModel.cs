using AdoTest.Interfaces;
using AdoTest.Messages;
using AdoTest.Model;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using Microsoft.Extensions.DependencyInjection;

namespace AdoTest.ViewModel;

[INotifyPropertyChanged]
public partial class SignUpViewModel : BaseViewModel
{
    [ObservableProperty] private User? _user;
    [ObservableProperty] private string _confirmPassword;

    public IDataBase Db { get; set; } = null!;
    public IMessageBox Mbox { get; set; } = null!;

    public SignUpViewModel()
    {
        User = new();
    }

    [RelayCommand]
    private async Task SignUp()
    {
        if (string.IsNullOrWhiteSpace(User.Name) || string.IsNullOrWhiteSpace(User.Surname) || User.Age <= 0 ||
            string.IsNullOrWhiteSpace(User.Login) || string.IsNullOrWhiteSpace(User.Password) && User.Password != ConfirmPassword)
        {
            Mbox.Show("Something Went Wrong");
            return;
        }

        if (await Db.AddUserAsync(User))
        {
            Mbox.Show("Done!");
            Back();
            return;
        }

        Mbox.Show("User Login Must Be Unique!");
    }

    [RelayCommand]
    private void Back()
    {
        var model = App.Provider.GetService<MainPageViewModel>()!;
        var message = new ChangeViewModelMessage(model);
        WeakReferenceMessenger.Default.Send(message);
        User!.Name = "";
        User!.Surname = "";
        User!.Age = 0;
        User!.Password = "";
        User!.Login = "";
        ConfirmPassword = "";
    }
}