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
    /// Логика взаимодействия для pHouseComplexList.xaml
    /// </summary>
    public partial class pHouseComplexList : Page
    {
        public pHouseComplexList()
        {
            InitializeComponent();
            DGridHouseComplex.ItemsSource = AvocadoEntities.GetContext().ResidentialComplexes.ToList();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pAddHouseComplex((sender as Button).DataContext as ResidentialComplex));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pAddHouseComplex(null));
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var housecomplexForRemove = DGridHouseComplex.SelectedItems.Cast<ResidentialComplex>().ToList();

            if (MessageBox.Show($"Вы уверены, что хотите удалить следующие {housecomplexForRemove.Count()} данные ?", "Внимание!!",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AvocadoEntities.GetContext().ResidentialComplexes.RemoveRange(housecomplexForRemove);
                    AvocadoEntities.GetContext().SaveChanges();

                    DGridHouseComplex.ItemsSource = AvocadoEntities.GetContext().ResidentialComplexes.ToList();
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
                DGridHouseComplex.ItemsSource = AvocadoEntities.GetContext().ResidentialComplexes.ToList();
            }
        }
    }
}
