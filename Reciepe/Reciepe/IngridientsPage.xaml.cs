using Microsoft.EntityFrameworkCore;
using Reciepe.Models;
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

namespace Reciepe
{
    /// <summary>
    /// Логика взаимодействия для IngridientsPage.xaml
    /// </summary>
    public partial class IngridientsPage : Page
    {
        ReceiptsWpfContext context = new ReceiptsWpfContext();
        public IngridientsPage()
        {
            InitializeComponent();
            ingridientsList.ItemsSource = context.Ingridients
                    .Include(r => r.ReceiptIngridients)
                    .ThenInclude(ri => ri.ReceiptNavigation)
                    .ToList();
        }

        private void searching(object sender, TextChangedEventArgs e)
        {
            ingridientsList.ItemsSource = context.Ingridients
                    .Include(r => r.ReceiptIngridients)
                    .ThenInclude(ri => ri.ReceiptNavigation)
                    .Where(s=>s.Name.Contains(search.Text))
                    .ToList();
        }
    }
}
