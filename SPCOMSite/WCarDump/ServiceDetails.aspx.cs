using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class ServiceDetails : System.Web.UI.Page
    {
        private SiteDBEntities db = new SiteDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id =Convert.ToInt32( Request.QueryString["id"]);
                string mode = (Request.QueryString["mode"] ?? " ").ToLower() ;
                 
                if (mode == "view")
                {
                    var item = (from sps in db.SPServices
                                where sps.Id == id
                                select sps).ToList();
                    Repeater1.DataSource = item;
                    Repeater1.DataBind();
                }
            }
        }
    }
}