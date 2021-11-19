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
    /// Логика взаимодействия для pApartamentList.xaml
    /// </summary>
    public partial class pApartamentList : Page
    {
        public pApartamentList()
        {
            InitializeComponent();
            //загружаем из апартаментов
            DGridApartament.ItemsSource = AvocadoEntities.GetContext().Apartaments.ToList();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pAddApartaments((sender as Button).DataContext as Apartament));
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new pAddApartaments(null));
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if(Visibility == Visibility.Visible)
            {
                AvocadoEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridApartament.ItemsSource = AvocadoEntities.GetContext().Apartaments.ToList();
            }
        }
    }
}
