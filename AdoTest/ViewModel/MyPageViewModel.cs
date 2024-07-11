using AdoTest.Messages;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using Microsoft.Extensions.DependencyInjection;

namespace AdoTest.ViewModel;

[INotifyPropertyChanged]
public partial class MyPageViewModel : BaseViewModel
{
    [ObservableProperty]
    private string _name;

    [RelayCommand]
    private void Back()
    {
        var model = App.Provider.GetService<MainPageViewModel>()!;
        var message = new ChangeViewModelMessage(model);
        WeakReferenceMessenger.Default.Send(message);
    }
}