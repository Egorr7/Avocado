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

        }
    }
}
