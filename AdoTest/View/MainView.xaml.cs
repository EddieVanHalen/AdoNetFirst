using System.Windows;
using AdoTest.ViewModel;

namespace AdoTest.View;

public partial class MainView : Window
{
    public MainView(MainViewModel mainViewModel)
    {
        InitializeComponent();

        DataContext = mainViewModel;
    }
}