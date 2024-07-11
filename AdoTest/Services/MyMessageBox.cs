using System.Windows;
using AdoTest.Interfaces;

namespace AdoTest.Services;

public class MyMessageBox : IMessageBox
{
    public void Show(string message)
    {
        MessageBox.Show(message);
    }
}