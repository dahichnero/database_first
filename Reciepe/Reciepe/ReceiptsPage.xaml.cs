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
    /// Логика взаимодействия для ReceiptsPage.xaml
    /// </summary>
    public partial class ReceiptsPage : Page
    {
        ReceiptsWpfContext context = new ReceiptsWpfContext();
        public ReceiptsPage()
        {
            InitializeComponent();
            receiptsItemsControl.ItemsSource = context.Receipts
                    .Include(r => r.ReceiptIngridients)
                    .ThenInclude(ri => ri.IngridientNavigation)
                    .ToList();
        }

        private void searching(object sender, TextChangedEventArgs e)
        {
            receiptsItemsControl.ItemsSource = context.Receipts
                   .Include(r => r.ReceiptIngridients)
                   .ThenInclude(ri => ri.IngridientNavigation)
                   .Where(s=>s.Name.Contains(search.Text) /*|| s.IngridientNavigation.Name.Contains(search.Text)*/)
                   .ToList();
        }
    }
}
