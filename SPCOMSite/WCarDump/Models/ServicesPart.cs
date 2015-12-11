using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WCarDump.Models
{
    public partial class Service
    {
        public int PriceInt { get
            {
                return  (int) Price;
            }
        }
    }
}