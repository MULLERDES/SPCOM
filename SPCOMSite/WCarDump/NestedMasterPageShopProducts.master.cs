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
    public partial class NestedMasterPageShopProducts : System.Web.UI.MasterPage
    {
        ShoProductsDBEntities db = new ShoProductsDBEntities();
        List<ProductCategory> catlist;
        protected void Page_Load(object sender, EventArgs e)
        {
            catlist = (from s in db.ProductCategories select s).ToList();
            ProductCategory t = catlist[0];
            catlist = DBFinder.PrepareList(catlist, 1);
            RepMenu.DataSource = catlist.FindAll(tf => tf.ParentCatId == 1);
            RepMenu.ItemDataBound += RepMenu_ItemDataBound;
            RepMenu.DataBind();
        }

        private void RepMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                ProductCategory sc = (ProductCategory)(e.Item.DataItem);
                if (sc != null)
                {
                    var hdr = (PlaceHolder)(e.Item.FindControl("ph" + sc.ParentCatId));
                    if (hdr != null)
                    {
                        hdr.Controls.Add(new LiteralControl(@"<a href=""ShopProductsMainList.aspx?id=" + sc.Id.ToString() + @" "">" + sc.Name + @"</a>"));
                        var tlist = catlist.FindAll(tf => tf.ParentCatId == sc.Id);
                        Repeater rep = new Repeater();
                        rep.HeaderTemplate = new MyTemplate2(ListItemType.Header, null);
                        rep.ItemTemplate = new MyTemplate2(ListItemType.Item, tlist);
                        rep.FooterTemplate = new MyTemplate2(ListItemType.Footer, null);
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

    public class MyTemplate2 : ITemplate
    {
        private List<ProductCategory> _catl;

        ListItemType _type;

        public MyTemplate2(ListItemType type, List<ProductCategory> _catl)
        {

            _type = type;
            this._catl = _catl;
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
                        ProductCategory sc = (ProductCategory)(((RepeaterItem)o).DataItem);
                        PlaceHolder ph = new PlaceHolder();
                        ph.ID = "ph" + sc.Id;
                        c.InnerHtml = @"<a href=""ShopProductsMainList.aspx?id=" + sc.Id.ToString() + @""">" + sc.Name + @"</a>";
                        container.Controls.Add(ph);
                    };
                    break;
            }

        }
    }

}