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
    public partial class AdminCategoriesList : System.Web.UI.Page
    {
        ShoServicesDBEnt db = new ShoServicesDBEnt();
        List<ServicesCategory> catlist;
        protected void Page_Load(object sender, EventArgs e)
        {
            catlist = (from s in db.ServicesCategories select s).ToList();
            ServicesCategory t = catlist[0];
            catlist = DBFinder.PrepareList(catlist, 1);
            catlist.Insert(0, t);
            Repeater1.ItemDataBound += Repeater1_ItemDataBound; ;
            Repeater1.DataSource = catlist;
            Repeater1.DataBind();

            if (!Page.IsPostBack)
            {
                SelectAddParent.DataSource = catlist;
                SelectAddParent.DataBind();
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

                ServicesCategory tmpCat = (ServicesCategory)e.Item.DataItem;
                if (((ServicesCategory)(e.Item.DataItem)).Id != 1)
                {
                    Button bSave = new Button();
                    bSave.ID = "bs" + tmpCat.Id;
                    bSave.Text = "Сохранить";
                    bSave.Click += BSave_Click; ;

                    plhdrSave.Controls.Add(bSave);

                    Button bRemove = new Button();
                    bRemove.ID = "br" + tmpCat.Id;
                    bRemove.Text = "Удалить";
                    bRemove.Click += BRemove_Click; ;
                    plhdrDelete.Controls.Add(bRemove);
                }
                HtmlSelect sel = new HtmlSelect();
                sel.ID = "sel" + tmpCat.Id;
                sel.DataSource = catlist;
                sel.DataBind();

                TextBox tb = new TextBox();
                tb.Text = tmpCat.Name;
                tb.ID = "tbn" + tmpCat.Id;
                plhdrTextBox.Controls.Add(tb);

                Label depthLabel = new Label();
                //depthLabel.Width = tmpCat.Depth * 25;

                plhdrDepth.Controls.Add(depthLabel);
                int idx = catlist.FindIndex(tf => tf.Id == tmpCat.ParentCatID);
                if (idx >= 0)
                    sel.SelectedIndex = idx;


                plhdr.Controls.Add(sel);
            }
        }

        private void BRemove_Click(object sender, EventArgs e)
        {
            Button but = (Button)sender;
            int ItemID = Convert.ToInt32(but.ID.Remove(0, 2));
            ServicesCategory tcat = DBFinder.FindProductsCategory(db, ItemID);


            db.ServicesCategories.Remove(tcat);
            db.SaveChanges();
            Response.Redirect("AdminServicesCategoriesList.aspx");
        }

        private void BSave_Click(object sender, EventArgs e)
        {
            Button but = (Button)sender;
            int ItemID = Convert.ToInt32(but.ID.Remove(0, 2));
            ServicesCategory tcat = DBFinder.FindProductsCategory(db, ItemID);
            HtmlSelect selNewParent = (HtmlSelect)DBFinder.FindControlInRepeater(Repeater1, "sel" + ItemID.ToString());

            ServicesCategory newParent = DBFinder.FindProductsCategory(db, selNewParent.Value);
            TextBox tbname = (TextBox)DBFinder.FindControlInRepeater(Repeater1, "tbn" + tcat.Id.ToString());

            tcat.Name = tbname.Text;
            if (tcat.Id == newParent.Id)
                return;
            tcat.ParentCatID = newParent.Id;
            db.SaveChanges();
            Response.Redirect("AdminServicesCategoriesList.aspx");
        }


        protected void bAddClick(object sender, EventArgs args)
        {
            ServicesCategory cat = DBFinder.FindProductsCategory(db, tbAdd.Text);
            if (cat == null)
            {
                lAddMessage.Text = "ok";
                ServicesCategory newCategoryParent = DBFinder.FindProductsCategory(db, SelectAddParent.Value);
                if (newCategoryParent != null)
                {
                    ServicesCategory tc = new ServicesCategory()
                    {
                        Description = "",
                        Name = tbAdd.Text,
                        ParentCatID = newCategoryParent.Id
                    };
                    db.ServicesCategories.Add(tc);
                    db.SaveChanges();
                    Response.Redirect("AdminServicesCategoriesList.aspx");
                }
            }
            else lAddMessage.Text = "В базе уже существует категория с таким названием и род категорией";
        }
    }
}