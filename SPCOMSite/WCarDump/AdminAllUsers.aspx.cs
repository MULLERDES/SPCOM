using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class AllUsers : Page
    {
        SiteDBEntities_Users db = new SiteDBEntities_Users();

        private int paageSize = 30;
        private int Count = 0;
        int currentPage =0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                currentPage = Convert.ToInt32(Request.QueryString["page"] ?? "0");
                if (!DBFinder.PermissionAdmin(this, db))
                    Response.Redirect("default.aspx");
                var userlist = (from s in db.Users orderby s.RegistrationDate select s).Skip(currentPage*paageSize).Take(paageSize).ToList();
                RAllUsers.DataSource = userlist;
                RAllUsers.DataBind();
                Count = db.Users.Count();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected string NavigationBuild()
        {
            return Count.ToString();
        }
    }
}