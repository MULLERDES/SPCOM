using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump.Supplements.ServiceCategories
{
    public partial class ServiceEditor : System.Web.UI.Page
    {
        
        private SiteDBEntities db = new SiteDBEntities();
        List<ServiceCategory> categories
        {
            get { return (List<ServiceCategory>)ViewState["catl"] ?? new List<ServiceCategory>(); }
            set { ViewState["catl"] = value; }
        }

        int id
        {
            get { return (int)(ViewState["idtosave"]??0); }
            set { ViewState["idtosave"] = value; }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!Page.IsPostBack)
            {
                string mode = Request.QueryString["mode"] ?? "null";

                categories = new List<ServiceCategory>();
                categories.AddRange((from cat in db.ServiceCategories select cat).ToList());
                ddCategory.DataSource = categories;
                ddCategory.DataBind();
                ddCategory.SelectedIndex = 0;

                switch (mode)
                {
                    case "edit":
                        id =Convert.ToInt32( Request.QueryString["id"]?? "0");
                        var item = (from ss in db.SPServices
                                    where ss.Id == id
                                    select ss).ToList();
                        if (item.Count == 1)
                        {
                            CKHEAD.Text = item[0].RawShort;
                            CKBODY.Text = item[0].RawData;
                            int tidx = categories.IndexOf( categories.Find(tf => tf.Id == item[0].CategoryID));
                            ddCategory.SelectedIndex = tidx;
                        }
                        break;
                    case "add":
                        break;
                    default:
                        Response.Redirect("default.aspx");
                        return;
                        

                }
                


            }
        }

        protected void BSave_Click(object sender, EventArgs e)
        {
            if (id == 0)
            {
                SPService serv = new SPService();
                serv.CategoryID = categories[ddCategory.SelectedIndex].Id;
                serv.RawShort = CKHEAD.Text;
                serv.RawData = CKBODY.Text;
                db.SPServices.Add(serv);
                db.SaveChanges();
                Response.Redirect("Services-main.aspx");
            }
            else
            {
                var spserv = (from s in db.SPServices
                              where s.Id == id
                              select s).ToList();
                spserv[0].RawShort = CKHEAD.Text;
                spserv[0].RawData = CKBODY.Text;
                spserv[0].CategoryID  = categories[ddCategory.SelectedIndex].Id;
                db.SaveChanges();
                Response.Redirect(Request.Url.ToString());
            }
        }
    }
}