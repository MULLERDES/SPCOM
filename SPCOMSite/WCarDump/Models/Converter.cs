using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WCarDump.Models
{
    public class Converter
    {
        public static string ToPrice(decimal pr)
        {
            
            return ToPrice(pr.ToString());
        }
        public static string ToPrice(string pr)
        {
            string tmp = pr.ToString();
            try
            {
                return tmp.Remove(tmp.Length - 3, 2);
            }
            catch (Exception)
            {
                return tmp;
            }
        }
    }
}