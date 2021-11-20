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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Avocado
{
    /// <summary>
    /// Логика взаимодействия для pHouses.xaml
    /// </summary>
    public partial class pHouses : Page
    {
        public pHouses()
        {
            InitializeComponent();
            DGridHouse.ItemsSource = AvocadoEntities.GetContext().ResidentialComplexes.ToList();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pAddHouse());
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
