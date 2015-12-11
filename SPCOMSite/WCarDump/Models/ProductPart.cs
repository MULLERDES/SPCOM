using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WCarDump.Models
{
    public partial class Product
    {
   
        public string GUID { get; set; }

        public int PriceInt { get { return (int)Price; } }
        public string PriceString { get { return String.Format("{0:0.00}", Price); } }
    }
}