using ExamSeptembre2022.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamSeptembre2022.ViewModels
{
    class ProductModel : INotifyPropertyChanged
    {
        private readonly Product _product;

        public Product Product
        {
            get { return _product; }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        public ProductModel(Product current)
        {
            _product = current;
        }

        public int ProductId 
        {
            get { return _product.ProductId; }
        }

        public String ProductNameListBox
        {
            get { return _product.ProductName; }
        }

        public String ProductName
        {
            get { return _product.ProductName; }
            set { _product.ProductName = value; OnPropertyChanged("ProductNameListBox"); }
        }

        public String SupplierContactName
        {
            get 
            {
                if (_product.Supplier != null)
                {
                    return _product.Supplier.ContactName;
                }
                return "";
                
            }
        }

        public String QuantityPerUnit
        {
            get { return _product.QuantityPerUnit; }
            set { _product.QuantityPerUnit = value; }
        }
    }
}
