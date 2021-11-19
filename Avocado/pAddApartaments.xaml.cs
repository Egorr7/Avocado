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
    /// Логика взаимодействия для pAddApartaments.xaml
    /// </summary>
    public partial class pAddApartaments : Page
    {
        private Apartament _currentApartament = new Apartament();
        public pAddApartaments(Apartament selectedApartament)
        {
            InitializeComponent();
            if (selectedApartament != null)
                _currentApartament = selectedApartament;

            DataContext = _currentApartament;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentApartament.Number.ToString()))
                errors.AppendLine("Укажите адрес");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentApartament.ID == 0)
                AvocadoEntities.GetContext().Apartaments.Add(_currentApartament);

            try
            {
                AvocadoEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
