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
    /// Логика взаимодействия для pAddHouse.xaml
    /// </summary>
    public partial class pAddHouse : Page
    {
        private House _currentHouse = new House();
        public pAddHouse(House selectedHouse)
        {
            InitializeComponent();
            if (selectedHouse != null)
                _currentHouse = selectedHouse;

            DataContext = _currentHouse;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentHouse.BuildingCost.ToString()))
                errors.AppendLine("Укажите адрес");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentHouse.ID == 0)
                AvocadoEntities.GetContext().Houses.Add(_currentHouse);

            try
            {
                AvocadoEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
