using Castle.DynamicProxy.Contributors;
using ExamSeptembre2022.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfApplication1.ViewModels;

namespace ExamSeptembre2022.ViewModels
{
    class ProductVM
    {
        private NorthwindContext dc = new NorthwindContext();

        private ObservableCollection<ProductModel> _ProductList;
        private ProductModel _selectedProduct;
        private DelegateCommand _saveCommand;
        
        private ObservableCollection<SalesModel> _SalesList;
        

        public ObservableCollection<ProductModel> ProductList
        {
            get { return _ProductList = _ProductList ?? LoadProduct(); }
        }

        
        public ObservableCollection<SalesModel> SalesList
        {
            get { return _SalesList = _SalesList ?? LoadSales(); }
        }
        

        private ObservableCollection<ProductModel> LoadProduct()
        {
            ObservableCollection<ProductModel> localCollection = new ObservableCollection<ProductModel>();
            foreach (var item in dc.Products)
            {
                localCollection.Add(new ProductModel(item));
            }
            return localCollection;
        }
        
        private ObservableCollection<SalesModel> LoadSales()
        {
            ObservableCollection<SalesModel> localCollection = new ObservableCollection<SalesModel>();
            var query = from d in dc.OrderDetails
                        group d by d.ProductId into g
                        orderby g.Key ascending
                        select new { ProductId = g.Key, Total = g.Sum(p => p.Quantity * p.UnitPrice) };

            foreach (var item in query) 
            {
                localCollection.Add(new SalesModel(item.ProductId, item.Total));
            }
            return localCollection;
        }
        

        public ProductModel SelectedProduct
        {
            get { return _selectedProduct; }
            set { _selectedProduct = value; }
        }

        public DelegateCommand SaveCommand
        {
            get { return _saveCommand = _saveCommand ?? new DelegateCommand(SaveProduct); }
        }

        private void SaveProduct()
        {
            dc.SaveChanges();
            MessageBox.Show("Enregistrement en base de données fait");
        }

    }
}
