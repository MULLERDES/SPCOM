using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    
    public partial class Services_main : System.Web.UI.Page
    {

        private SiteDBEntities db = new SiteDBEntities();


        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<SPService> sp = new List<SPService>();
                //sp.Add(new SPService(){ RawShort="<H1> sdasd</H1>"});
                sp.AddRange(
                    (from s in db.SPServices select s).ToList()
                    );

                ServicesRepeater.DataSource = sp;
                ServicesRepeater.DataBind();


                
            }

            Button bADD = new Button();
            bADD.Text = "Добавить запись";
            bADD.Click += new EventHandler(delegate(object o, EventArgs ar)
            {
                Response.Redirect("ServiceEditor.aspx?mode=add");
            }
            );
            PlaceHolder1.Controls.Add(bADD);
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            {
               
               // Response.Redirect(RequesPath());
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
    }
}