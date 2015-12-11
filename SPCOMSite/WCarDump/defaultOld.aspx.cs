using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Security;

namespace WCarDump
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Security.MD5H.GetHash("admin");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
    }
}