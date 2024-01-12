using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamSeptembre2022.ViewModels
{
    class SalesModel
    {
        private readonly int _productId;
        private readonly decimal _total = 0;

        public SalesModel(int productId, decimal total)
        {
            _productId = productId;
            _total = total;
        }

        public int ProductId { get { return _productId; } }
        public decimal Total { get { return _total; } }
    }
}
