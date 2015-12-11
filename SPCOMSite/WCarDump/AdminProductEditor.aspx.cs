using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class AdminProductEditor : System.Web.UI.Page
    {
        ShoProductsDBEntities db = new ShoProductsDBEntities();
        List<ProductCategory> _catlist;
      
        List<ProductModifiaction> _mods
        {
            get { return (List<ProductModifiaction>)ViewState["mods"] ?? new List<ProductModifiaction>(); }
            set { ViewState["mods"] = value; }
        }

        int _ProductID
        {
            get { return (int)(ViewState["prodid"] ?? -1); }
            set { ViewState["prodid"] = value; }
        }
        
        private void Load_Modifications()
        {
            if (_ProductID >= 0)
            {

                //repModificattions.DataSource = null;
                //repModificattions.DataBind();

                var modsl = (from s in db.ProductModifiactions where s.ProductId == _ProductID select s).ToList();
                repModificattions.DataSource = modsl;
                repModificattions.ItemDataBound += RepModificattions_ItemDataBound;
                repModificattions.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            _catlist = (from s in db.ProductCategories select s).ToList();
            _catlist = DBFinder.PrepareList(_catlist, 1);
           

            if (!IsPostBack)
            {
                
                 SelCatgory.DataSource = _catlist;
                 SelCatgory.DataBind();
            }
            
            
            string nMode = Request.QueryString["mode"] ?? "null";
            string id = Request.QueryString["id"] ?? "-1";
            
            _ProductID =  Convert.ToInt32(id);

           
            if(_ProductID<0)
            {
                Response.Redirect("AdminProductsList.aspx");
                return;
            }
            Load_Modifications();
            

            
               
              

                
               if(!IsPostBack)
                switch (nMode)
                {
                   
                    case "edit":
                        {
                            if (_ProductID >= 0)
                            {
                                try
                                {
                                    var tpr = (from s in db.Products where s.Id == _ProductID select s).ToList()[0];
                                    _ProductID = tpr.Id;
                                    tbNAme.Text = tpr.Name;
                                    {
                                        SelCatgory.SelectedIndex = _catlist.FindIndex(tf => tf.Id == tpr.CategoryID) == -1 ?
                                            0: _catlist.FindIndex(tf => tf.Id == tpr.CategoryID);
                                    }
                                    tbDescr.InnerText = tpr.Description;
                                    imgPreview.ImageUrl = tpr.ImageURL;
                                    tbPrice.Text = tpr.Price.ToString();
                                    CKHEAD.Text = tpr.RawData;
                                }
                                catch(Exception)
                                {
                                    Response.Redirect("AdminProductsList.aspx");
                                }
                            }
                        }break;
                    default:break;
                }

              


          
            
        }

        private void RepModificattions_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            ProductModifiaction mod = (ProductModifiaction)e.Item.DataItem;
            RepeaterItem item = e.Item;
            if ((item.ItemType == ListItemType.Item) ||
                (item.ItemType == ListItemType.AlternatingItem))
            {
                var plName = (PlaceHolder)item.FindControl("plhdrName");
                var plPrice = (PlaceHolder)item.FindControl("plhdrPrice");
                var plDescr = (PlaceHolder)item.FindControl("plhdrDescription");
                var plButtons = (PlaceHolder)item.FindControl("plhdrButtons");

                var tbName = new TextBox()
                {
                    ID = "tbName"+mod.Id.ToString(),
                    Text = mod.Name
                };
                var tbPrice = new TextBox()
                {
                    ID = "tbPrice" + mod.Id.ToString(),
                    Text = mod.Price.ToString()
                };
                var tbDescr = new TextBox()
                {
                    ID = "tbDescr" + mod.Id.ToString(),
                    Text = mod.Decription.ToString()
                };

                var bRemove = new Button()
                {
                    ID = "bRemove" + mod.Id.ToString(),
                    Text = "Удлить запись",
                    CssClass = "modbutton"
                };
                bRemove.Click += new EventHandler(delegate (object sen, EventArgs args) {
                    var curButton = (Button)sen;
                    int modid = Convert.ToInt32(curButton.ID.Remove(0, 7));
                    try
                    {
                        ProductModifiaction delmod = (from s in db.ProductModifiactions
                                                      where s.Id == modid select s).ToList()[0];
                            db.ProductModifiactions.Remove(delmod);
                            db.SaveChanges();
                                                                
                        }
                        catch (Exception)
                        {

                        }
                    
                    });
                var bSave = new Button()
                {
                    ID = "bSave" + mod.Id.ToString(),
                    Text = "Сохранить",
                    CssClass= "modbutton"
                };
                bSave.Click+= new EventHandler(delegate (object sen, EventArgs args) {
                    var curButton = (Button)sen;
                    int modid = Convert.ToInt32(curButton.ID.Remove(0, 5));
                    try
                    {
                        ProductModifiaction savemod = (from s in db.ProductModifiactions
                                                      where s.Id == modid
                                                      select s).ToList()[0];
                        var b_name = (TextBox)DBFinder.FindControlInRepeater(repModificattions, "tbName" + mod.Id.ToString());

                        var b_price = (TextBox)DBFinder.FindControlInRepeater(repModificattions, "tbPrice" + mod.Id.ToString());
                        var b_Descr = (TextBox)DBFinder.FindControlInRepeater(repModificattions, "tbDescr" + mod.Id.ToString());
                        if (b_name!=null&&b_price!=null&&b_Descr!=null)
                        {
                            savemod.Name = b_name.Text;
                            savemod.Decription = b_Descr.Text;
                            savemod.Price = Convert.ToDecimal(b_price.Text.Replace(".", ","));

                        }                        
                        db.SaveChanges();

                    }
                    catch (Exception)
                    {

                    }

               });

                tbName.CssClass =  "inputName";
                tbPrice.CssClass = "inputPrice";
                tbDescr.CssClass = "inputDescr";
                tbDescr.TextMode = TextBoxMode.MultiLine;
                plName.Controls.Add(tbName);
                plPrice.Controls.Add(tbPrice);
                plDescr.Controls.Add(tbDescr);
                plButtons.Controls.Add(bSave);
                plButtons.Controls.Add(bRemove);

            }
        }

        protected void bAddModifications_Click(object sender, EventArgs e)
        {
            ProductModifiaction mod = new ProductModifiaction()
            {
                Name = "Имя",
                Decription = "Описание",
                Price = 0,
                ProductId = _ProductID
            };
            db.ProductModifiactions.Add(mod);
            db.SaveChanges();
         //   int a = mod.Id;
            
        }

        protected void bRemoveRecord_Click(object sender, EventArgs e)
        {
            var curProduct = (from s in db.Products where s.Id == _ProductID select s).ToList();
            if (curProduct != null && curProduct.Count > 0)
            {
                db.Products.Remove(curProduct[0]);
                db.SaveChanges();
                Response.Redirect("AdminProductsList.aspx");
            }
        }

        protected void bSaveProduct_Click(object sender, EventArgs e)
        {
            try
            {
                Product prod = (from s in db.Products
                                where s.Id == _ProductID
                                select s).ToList()[0];
                prod.Name = tbNAme.Text;
                prod.Price = Convert.ToDecimal( tbPrice.Text.Replace(".", ","));
                prod.Description = tbDescr.InnerText;
                prod.ImageURL = imgPreview.ImageUrl;
                prod.CategoryID = _catlist[SelCatgory.SelectedIndex].Id;
                prod.RawData = CKHEAD.Text;
                db.SaveChanges();
            }
            catch (Exception)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }
    }
}