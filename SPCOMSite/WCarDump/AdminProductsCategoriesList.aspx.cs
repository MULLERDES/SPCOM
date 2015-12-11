using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class AdminProductsCategoriesList : System.Web.UI.Page
    {
        ShoProductsDBEntities db = new ShoProductsDBEntities();

        List<ProductCategory> catlist;
        protected void Page_Load(object sender, EventArgs e)
        {
            
           // if(!Page.IsPostBack)
            {
                //List<string> l = new List<string>();
                //l.Add("firstItem");
                //l.Add("SecondItem");
               
                catlist = (from s in db.ProductCategories select s).ToList();
                {
                    ProductCategory t = catlist[0];


                    catlist = DBFinder.PrepareList(catlist, 1);
                    catlist.Insert(0, t);
                }
                Repeater1.ItemDataBound += Repeater1_ItemDataBound;
                Repeater1.DataSource = catlist;
                Repeater1.DataBind();
                
                if (!Page.IsPostBack)
                {
                    SelectAddParent.DataSource = catlist;
                    SelectAddParent.DataBind();
                }
            }
        }
        
        
       
        private void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var plhdr = (PlaceHolder)(e.Item.FindControl("phdr"));
                var plhdrSave = (PlaceHolder)(e.Item.FindControl("bitemSavePH"));
                var plhdrDelete = (PlaceHolder)(e.Item.FindControl("bitemDeletePH"));
                var plhdrTextBox = (PlaceHolder)(e.Item.FindControl("bitemTextboxPH"));
                var plhdrDepth = (PlaceHolder)(e.Item.FindControl("bitemDepth"));

                ProductCategory tmpCat = (ProductCategory)e.Item.DataItem;
                if (((ProductCategory)(e.Item.DataItem)).Id != 1)
                {
                    Button bSave = new Button();
                    bSave.ID = "bs" + tmpCat.Id;
                    bSave.Text = "Сохранить";
                    bSave.Click += BSaveItem_Click;

                    plhdrSave.Controls.Add(bSave);

                    Button bRemove = new Button();
                    bRemove.ID = "br" + tmpCat.Id;
                    bRemove.Text = "Удалить";
                    bRemove.Click += BRemove_Click;
                    plhdrDelete.Controls.Add(bRemove);
                }
                HtmlSelect sel = new HtmlSelect();
                sel.ID = "sel"+ tmpCat.Id;
                sel.DataSource = catlist;
                sel.DataBind();

                TextBox tb = new TextBox();
                tb.Text = ((ProductCategory)(e.Item.DataItem)).Name;
                tb.ID = "tbn" + tmpCat.Id;
                plhdrTextBox.Controls.Add(tb);

                Label depthLabel = new Label();
                depthLabel.Width = tmpCat.Depth*25;
               
                plhdrDepth.Controls.Add(depthLabel);
                int idx = catlist.FindIndex(tf => tf.Id == ((ProductCategory)(e.Item.DataItem)).ParentCatId);
                if (idx >= 0)
                    sel.SelectedIndex = idx;
                 

                plhdr.Controls.Add(sel);
            }
        }

        private void BRemove_Click(object sender, EventArgs e)
        {
            Button but = (Button)sender;
            int ItemID = Convert.ToInt32(but.ID.Remove(0, 2));
            ProductCategory tcat = DBFinder.FindProductsCategory(db, ItemID);


            db.ProductCategories.Remove(tcat);
            db.SaveChanges();
            Response.Redirect("AdminProductsCategoriesList.aspx");
        }

        private void BSaveItem_Click(object sender, EventArgs e)
        {
            Button but = (Button)sender;
            int ItemID = Convert.ToInt32(but.ID.Remove(0, 2));
            ProductCategory tcat = DBFinder.FindProductsCategory(db, ItemID);
            HtmlSelect selNewParent =(HtmlSelect) DBFinder.FindControlInRepeater(Repeater1, "sel" + ItemID.ToString());

            ProductCategory newParent = DBFinder.FindProductsCategory(db, selNewParent.Value);
            TextBox tbname = (TextBox) DBFinder.FindControlInRepeater(Repeater1, "tbn" + tcat.Id.ToString());

            tcat.Name = tbname.Text;
            if (tcat.Id == newParent.Id)
                return;
            tcat.ParentCatId = newParent.Id;
            db.SaveChanges();
            Response.Redirect("AdminProductsCategoriesList.aspx");
        }

        protected void bAddClick(object sender, EventArgs args)
        {
            ProductCategory cat = DBFinder.FindProductsCategory(db, tbAdd.Text);
            if (cat == null)
            {
                lAddMessage.Text = "ok";
                ProductCategory newCategoryParent = DBFinder.FindProductsCategory(db, SelectAddParent.Value);
                if (newCategoryParent!=null)
                {
                    ProductCategory tc = new ProductCategory()
                    {
                        Description = "",
                        Name = tbAdd.Text, ParentCatId = newCategoryParent.Id
                    };
                    db.ProductCategories.Add(tc);
                    db.SaveChanges();
                    Response.Redirect("AdminProductsCategoriesList.aspx");
                }
            }
            else lAddMessage.Text = "В базе уже существует категория с таким названием и род категорией";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                Response.Write("Selected index: " + SelectAddParent.SelectedIndex.ToString()
                         + ", value: " + SelectAddParent.Value); 
            //for (int i = 0; i < Repeater1.Items.Count; i++)
            //{

            //    HtmlSelect sel = (HtmlSelect)Repeater1.Items[i].FindControl("sel0");
            //    if(sel!=null)
            //    {

            //    }
            //}
            //HtmlSelect sel = (HtmlSelect)DBFinder.FindControlInRepeater(Repeater1,"sel0");
            //if (sel != null)
            //{
            //    //   sel.Items.Add("2");
            //    Label1.Text = sel.Value;
            //} 
           
            //Select2.Items.Add("11111");
        }
    }
}