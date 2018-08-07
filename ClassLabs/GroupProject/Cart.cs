using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class Cart
    {
        public int Quantity { get; set; }
        public int ProductID { get; set; }

        public Cart(int qty,int pID)
        {
            Quantity = qty;
            ProductID = pID;
        }
    }
}