using AdoTest.ViewModel;

namespace AdoTest.Messages;

public class ChangeViewModelMessage : Message
{
    public BaseViewModel ViewModel { get; set; }

    public ChangeViewModelMessage(BaseViewModel viewModel)
    {
        ViewModel = viewModel;
    }
}