using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Proyecto_QR
{
    public class CartItem
    {
        public int ItemId { get; set; }
        public int ProductID { get; set; }
        public int UserId { get; set; }
        public int Quantity { get; set; }
        public double UnitPrice { get; set; }
        public string CartId { get; set; }
        
        
    }
}