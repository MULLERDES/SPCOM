using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class NestedMasterPageAdmin : System.Web.UI.MasterPage
    {
        SiteDBEntities_Users db = new SiteDBEntities_Users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!DBFinder.PermissionAdmin(this.Page, db))
                Response.Redirect("default.aspx");
        }
    }
}