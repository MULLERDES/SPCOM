using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class NestedMasterPageShopServices : System.Web.UI.MasterPage
    {
        ShoServicesDBEnt db = new ShoServicesDBEnt();
        List<ServicesCategory> catlist;
        protected void Page_Load(object sender, EventArgs e)
        {
            catlist = (from s in db.ServicesCategories select s).ToList();
            ServicesCategory t = catlist[0];
            catlist = DBFinder.PrepareList(catlist, 1);
            RepMenu.DataSource = catlist.FindAll(tf=>tf.ParentCatID==1);
            RepMenu.ItemDataBound += RepMenu_ItemDataBound;
            RepMenu.DataBind();
        }

       

        private void RepMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
      
                ServicesCategory sc = (ServicesCategory)(e.Item.DataItem);
                if (sc != null)
                {
                    var hdr = (PlaceHolder)(e.Item.FindControl("ph"+sc.ParentCatID));
                    if (hdr != null)
                    {
                        hdr.Controls.Add(new LiteralControl(@"<a href=""ShopServicesMainList.aspx?id="+sc.Id.ToString()+ @" "">"+ sc.Name+ @"</a>"));
                        var tlist = catlist.FindAll(tf => tf.ParentCatID == sc.Id);
                        Repeater rep = new Repeater();
                        rep.HeaderTemplate = new MyTemplate(ListItemType.Header, null);
                        rep.ItemTemplate = new MyTemplate(ListItemType.Item, tlist);
                        rep.FooterTemplate = new MyTemplate(ListItemType.Footer, null);
                        rep.ItemDataBound += RepMenu_ItemDataBound;
                        rep.DataSource = tlist;
                        if (tlist.Count > 0)
                        {
                            hdr.Controls.Add(rep);
                            rep.DataBind();
                        }
                    }
                }
            }
        }
    }


    public class MyTemplate : ITemplate
    {
        private List<ServicesCategory> _catl;

        ListItemType _type;

        public MyTemplate(ListItemType type,List<ServicesCategory> _catl)
        {

            _type = type;
            this._catl=_catl;
        }
        public void InstantiateIn(Control container)
        {
            switch (_type)
            {
                case ListItemType.Header:
                    container.Controls.Add(new LiteralControl("<ul>"));
                    break;

                case ListItemType.Footer:
                    container.Controls.Add(new LiteralControl("</ul>"));
                    break;

                case ListItemType.Item:
                case ListItemType.AlternatingItem:
                    var c = new HtmlGenericControl("li");
                    container.Controls.Add(c);
                    container.DataBinding += (o, e) =>
                    {
                        ServicesCategory sc = (ServicesCategory)(((RepeaterItem)o).DataItem);
                        PlaceHolder ph = new PlaceHolder();
                        ph.ID = "ph" + sc.Id;
                        c.InnerHtml = @"<a href=""ShopServicesMainList.aspx?id=" + sc.Id.ToString()+@""">"+ sc.Name+@"</a>";
                        container.Controls.Add(ph);
                    };
                    break;
            }
           
        }
    }
}