using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using GameLibraryDBClient.MainMenu;
using GameLibraryDBClient.MainMenu.Pages;

namespace GameLibraryDBClient
{
    /// <summary>
    /// Logika interakcji dla klasy MainMenuWindow.xaml
    /// </summary>
    public partial class MainMenuWindow : Window
    {
        public MainMenuWindow()
        {
            InitializeComponent();
        }

        private void GamesBTN_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new GamesPage());
        }

        private void GenreBTN_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new GenresPage());
        }

        private void CreatorsBTN_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new CreatorsPage());
        }

        private void PublisherBTN_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new PublishersPage());
        }

        private void GamesGenreBTN_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new GamesGenrePage());
        }
    }
}
