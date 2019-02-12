using System.Threading.Tasks;

namespace RemoteNotes.UI.Contract
{
    public interface IMainWindowController
    {
        void LoadLogin();
        void Exit();

        void RegisterControls(IControlFactory controlFactory);
        void LoadDashboard();
    }
}
