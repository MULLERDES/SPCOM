using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class ShopServicesMainList : System.Web.UI.Page
    {
        ShoServicesDBEnt db = new ShoServicesDBEnt();
        private List<ServicesCategory> _categories;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            List<int> ids;
            try
            {
                id= Convert.ToInt32(Request.QueryString["id"]??"1");
                _categories = (from s in db.ServicesCategories where s.Id!=1 select s).ToList();
                ids = FindAllChild(_categories, id);
            }
            catch (Exception)
            {
                id = 0;
                ids = new List<int>();
            }


            List<Service> serv;
            if (id == 1) serv = (from s in db.Services select s).ToList();
            else serv = (from s in db.Services where ids.Contains(s.CategoryId) select s).ToList();
            RepeaterServices.DataSource = serv;
            RepeaterServices.ItemDataBound += RepeaterServices_ItemDataBound;
            RepeaterServices.DataBind();
        }
        private List<int> FindAllChild(List<ServicesCategory> list, int startID)
        {
            List<int> ret = new List<int>();
            ret.Add(startID);
            var fl = list.FindAll(tf => tf.ParentCatID == startID);
            if (fl!=null&&fl.Count>0)
            {
                foreach (var item in fl)
                {
                    ret.Add(item.Id);
                    ret.AddRange(FindAllChild(list, item.Id));
             
                }     
                
            }

            return ret;
           
       }


        private void RepeaterServices_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                PlaceHolder ph = (PlaceHolder)(e.Item.FindControl("plhdrImage"));
                {
                    if (ph != null)
                    {
                        Image img = new Image();
                        img.Width = 150;
                        img.Height = 150;
                        img.ImageUrl = ((Service)(e.Item.DataItem)).ImageUrl;
                        ph.Controls.Add(img);
                    }
                }
            }
        }
    }
}