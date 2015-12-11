using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WCarDump.Models
{
    public partial class User
    {
        public string NEWPASSHASH
        {
            get
            {
                // сегодня +текущий час 
                string s = DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + Password ;
                return Security.MD5H.GetHash(s);
            }
        }
    }
}