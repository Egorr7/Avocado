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
    /// Логика взаимодействия для pAddHouseComplex.xaml
    /// </summary>
    public partial class pAddHouseComplex : Page
    {
        private ResidentialComplex _currentHouseComplex = new ResidentialComplex();
        public pAddHouseComplex(ResidentialComplex selectedResidentialComplex)
        {
            InitializeComponent();
            if (selectedResidentialComplex != null)
                _currentHouseComplex = selectedResidentialComplex;

            DataContext = _currentHouseComplex;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentHouseComplex.BuildingCost.ToString()))
                errors.AppendLine("Укажите адрес");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentHouseComplex.ID == 0)
                AvocadoEntities.GetContext().ResidentialComplexes.Add(_currentHouseComplex);

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
