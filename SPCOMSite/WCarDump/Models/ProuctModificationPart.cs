using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WCarDump.Models
{
    public partial class ProductModifiaction
    {
        public string PriceString { get { return string.Format("{0:0.00}", Price); } }
    }
}