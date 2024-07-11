using System.Data.SqlClient;
using System.Windows;
using AdoTest.Services;
using AdoTest.View;
using AdoTest.ViewModel;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace AdoTest;

/// <summary>
/// Interaction logic for App.xaml
/// </summary>
public partial class App : Application
{
    public static ServiceCollection Collection { get; set; } = null!;
    public static ServiceProvider Provider { get; set; } = null!;

    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);

        Collection = new ServiceCollection();

        Collection.AddSingleton<MainView>();
        Collection.AddSingleton<ConfigurationBuilder>();
        Collection.AddSingleton<MyMessageBox>();
        Collection.AddSingleton<MainViewModel>();
        Collection.AddSingleton<MyPageViewModel>();
        Collection.AddSingleton<SignUpViewModel>();
        Collection.AddSingleton<MainPageViewModel>();

        Provider = Collection.BuildServiceProvider();

        var view = Provider.GetService<MainView>();

        view?.ShowDialog();
    }
}