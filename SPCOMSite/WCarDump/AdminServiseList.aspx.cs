using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

    
namespace WCarDump
{
    public partial class AdminServiseList : System.Web.UI.Page
    {
        ShoServicesDBEnt db = new ShoServicesDBEnt();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            var sl = (from s in db.Services select s).ToList();
            RepServices.DataSource = sl;
            RepServices.DataBind();
        }

        protected void baddNewService_Click(object sender, EventArgs e)
        {
            Service serv = new Service()
            {
                CategoryId = 1,
                Description = " ",
                ImageUrl = "#",
                Name = "empry name",
                Price = 0,
                RawData = " "
            };

            db.Services.Add(serv);
            db.SaveChanges();
            Response.Redirect("AdminServiseEditor.aspx?mode=edit&id=" +serv.Id);
        }


       
    }
}