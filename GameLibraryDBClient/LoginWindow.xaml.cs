using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GameLibraryDBClient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void ConnectBTN_Click(object sender, RoutedEventArgs e)
        {
            DBManager.IP = IP.Text;
            DBManager.PORT = Port.Text;
            DBManager.SERVICE = Service.Text;
            DBManager.LOGIN = Login.Text;
            DBManager.PASSWORD = Password.Text;

            try
            {
                DBManager.Connect();
            }
            catch(Exception ex)
            {
                ConnectionStatus.Text = "BLAD W POLACZENIU Z BAZA DANYCH: " + ex.Message + "\n CONNECTION STRING:\n" + DBManager.cst;
                return;
            }
            ConnectionStatus.Text = "SUKCES";
        }
    }
}