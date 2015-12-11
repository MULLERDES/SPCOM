using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;
namespace WCarDump
{
    public partial class ShopProductsMainList : System.Web.UI.Page
    {
        private ShoProductsDBEntities db = new ShoProductsDBEntities();
        public string CATNAME { get; private set; } = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Product> _products=null;
                try
                {
                    int categoryID = Convert.ToInt32(Request.QueryString["id"]??"-1");
                    if (categoryID <= 0) throw new Exception();
                    _products = (from s in db.Products where s.CategoryID == categoryID select s).ToList();
                }
                catch (Exception)
                {
                    _products = (from s in db.Products select s).ToList();
                }
                finally
                {
                    if (_products != null)
                    {
                        if(_products.Count > 0) CATNAME = _products[0].ProductCategory.Name;
                        repAllProducts.DataSource = _products;
                        repAllProducts.ItemDataBound += new RepeaterItemEventHandler(delegate (object s, RepeaterItemEventArgs args) {
                            RepeaterItem item = args.Item;
                            if ((item.ItemType == ListItemType.Item) ||
                                (item.ItemType == ListItemType.AlternatingItem))
                            {
                                var img = (Image)item.FindControl("picturePreview");
                                if (img!=null)
                                {
                                    img.ImageUrl = ((Product)item.DataItem).ImageURL;
                                }
                            }
                        });
                        repAllProducts.DataBind();
                    }
                }
               

                //var _products (form s in db.Products sw)
            }
        }
    }
}