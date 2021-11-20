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
            DGridHouse.ItemsSource = AvocadoEntities.GetContext().Houses.ToList();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pAddHouse((sender as Button).DataContext as House));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pAddHouse(null));
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var houseForRemove = DGridHouse.SelectedItems.Cast<House>().ToList();

            if (MessageBox.Show($"Вы уверены, что хотите удалить следующие {houseForRemove.Count()} данные ?", "Внимание!!",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AvocadoEntities.GetContext().Houses.RemoveRange(houseForRemove);
                    AvocadoEntities.GetContext().SaveChanges();

                    DGridHouse.ItemsSource = AvocadoEntities.GetContext().Houses.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                AvocadoEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridHouse.ItemsSource = AvocadoEntities.GetContext().Houses.ToList();
            }
        }
    }
}
