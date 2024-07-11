using AdoTest.Messages;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Messaging;
using Microsoft.Extensions.DependencyInjection;

namespace AdoTest.ViewModel;

[INotifyPropertyChanged]
public partial class MainViewModel : BaseViewModel
{
    [ObservableProperty] private BaseViewModel _currentViewModel;

    public MainViewModel()
    {
        WeakReferenceMessenger.Default.Register<ChangeViewModelMessage>(this, (sender, message) =>
        {
            CurrentViewModel = message.ViewModel;
        });

        var view = App.Provider.GetService<MainPageViewModel>()!;
        var message = new ChangeViewModelMessage(view);
        WeakReferenceMessenger.Default.Send(message);
    }
}