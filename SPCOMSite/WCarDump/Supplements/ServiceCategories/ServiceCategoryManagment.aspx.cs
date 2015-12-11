using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump.Supplements.ServiceCategories
{
    public partial class ServiceCategoryManagment : System.Web.UI.Page
    {
        private SiteDBEntities db = new SiteDBEntities();
        List<ServiceCategory> categories
        {
            get { return (List<ServiceCategory>)ViewState["catl"] ?? new List<ServiceCategory>(); }
            set { ViewState["catl"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                categories = new List<ServiceCategory>();


                categories.AddRange((from cat in db.ServiceCategories select cat).ToList());
               //categories.Insert(0, new ServiceCategory() { Id = 0, Name = "Родительская" });


                DropDownList1.DataSource = categories;
                DropDownList1.DataBind();
                DropDownList1.SelectedIndex = 0;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceCategory serv = new ServiceCategory();
            serv.Descriprion = tbDescription.Text;
            serv.Name = tbName.Text;
            int idx = DropDownList1.SelectedIndex;

            ServiceCategory sc = categories[idx];
            if (sc != null)
                serv.ParentID = sc.Id;


            db.ServiceCategories.Add(serv);
            db.SaveChanges();

            lStatus.Text = "ok";
        }
    }
}