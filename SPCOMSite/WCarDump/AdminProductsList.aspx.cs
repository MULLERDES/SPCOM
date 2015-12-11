using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;
namespace WCarDump
{
    public partial class AdminProductsList : System.Web.UI.Page
    {
        ShoProductsDBEntities db = new ShoProductsDBEntities();
        List<Product> _products;
        List<ProductCategory> catlist;

        protected void Page_Load(object sender, EventArgs e)
        {
            _products = (from s in db.Products select s).ToList();
            catlist = (from s in db.ProductCategories select s).ToList();
            {
                ProductCategory t = catlist[0];


                catlist = DBFinder.PrepareList(catlist, 1);
                catlist.Insert(0, t);
                RepCategories.DataSource = catlist;
                RepCategories.ItemDataBound += RepCategories_ItemDataBound;
                RepCategories.DataBind();
            }
            if (!Page.IsPostBack)
            {
                SelCategory.DataSource = catlist;
                SelCategory.DataBind();
            }
        }

        private void RepCategories_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            RepeaterItem item = e.Item;
            if ((item.ItemType == ListItemType.Item) ||
                (item.ItemType == ListItemType.AlternatingItem))
            {
                var prodRep = (Repeater)item.FindControl("RepProductsForCategory");

                prodRep.ItemDataBound += new RepeaterItemEventHandler(delegate(object s, RepeaterItemEventArgs aarg) {
                    RepeaterItem proditem = aarg.Item;
                    if ((proditem.ItemType == ListItemType.Item) ||
                        (proditem.ItemType == ListItemType.AlternatingItem))
                    {
                        PlaceHolder ph = (PlaceHolder)proditem.FindControl("phdrRemoveButton");
                        if (ph != null)
                        {
                            Button newButton = new Button();

                            newButton.Text = "Удалить";
                            newButton.ID = "br" + ((Product)proditem.DataItem).Id;//.ToString();
                               
                           
                            newButton.Click += new EventHandler(delegate (object tobuttonsender, EventArgs argsButton) {
                                try
                                {
                                    int id = Convert.ToInt32(((Button)tobuttonsender).ID.Remove(0, 2));
                                    if(id>0)
                                    {
                                        Product toRemoveProduct = new Product() { Id = id };
                                        db.Products.Remove(toRemoveProduct);
                                        db.SaveChanges();
                                    }
                                }
                                catch (Exception)
                                {

                                }

                            });
                            ph.Controls.Add(newButton);
                        }
                    }
                });
                prodRep.DataSource = _products.FindAll(pf => pf.CategoryID == ((ProductCategory)(item.DataItem)).Id);
                prodRep.DataBind();
            }
        }
        protected void BAddClick(object s, EventArgs args)
        {
          
            Product pr = new Product()
            {
                Name = tbAdd.Text,
                Description = " ", ImageURL="", RawData="<h1> Empty product description</h1>"
            };        
                pr.CategoryID = catlist[SelCategory.SelectedIndex].Id;

            db.Products.Add(pr);
            db.SaveChanges();
            Response.Redirect("AdminProductEditor.aspx?mode=edit&id=" + pr.Id.ToString());
        }
    }
}