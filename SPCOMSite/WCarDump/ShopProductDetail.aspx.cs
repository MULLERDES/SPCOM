using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class ShopProductDetail : System.Web.UI.Page
    {
        ShoProductsDBEntities db = new ShoProductsDBEntities();
        int id = 0;
        private Product _product;
        private List<ProductModifiaction> _mods; 
    
        protected void Page_Load(object sender, EventArgs e)
        {
           
            UCModalWindows.isloadTrash = true;
            try
            {
               
                id = Convert.ToInt32(Request.QueryString["id"] ?? "0");
              
                var prod = (from s in db.Products where s.Id == id select s).ToList();
                if (prod != null && prod.Count > 0)
                    _product = prod[0];


                
                mainPicture.ImageUrl = _product.ImageURL;
                pictLink.NavigateUrl = _product.ImageURL;

                _mods = (from s in db.ProductModifiactions where s.ProductId==id select s).ToList();
                if (_mods.Count > 0)
                {
                    repMods.DataSource = _mods;
                    repMods.DataBind();
                }

                if (!IsPostBack)
                {
                    ViewState["guid"] = Guid.NewGuid().ToString();
                }

                _product.GUID = ViewState["guid"].ToString();
                
            }
            catch (Exception)
            {
                id = 0;
            }
        }

        protected string LoadPrice()
        {
            if (_product != null)
            {
                return _product.PriceString;
            }
            return "Цену уточняйте";
        }

        protected string LoadName()
        {
            if (_product != null)
            {
                return _product.Name;
            }
            return "404";
        }

        protected string LoadRAW()
        {
            if (_product != null)
            {
                return _product.RawData;
            }
            return "404";
        }

        protected string LoadShort()
        {
            if (_product != null)
            {
                return _product.Description;
            }
            return "404";
        }

        protected void zadatVopros_ServerClick(object sender, EventArgs e)
        {
            //((List<Product>)Session["TrashProducts"]).Add(new Product() {
            //    Name = "QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ"
            //});
            //UCModalWindows.BindTrash();
  
        }

      

        protected void AddToTrash_ServerClick(object sender, EventArgs e)
        {
           
            try
            {
                ((CTrashOrder)(Session["CTrash"])).AddProduct(_product,Convert.ToInt32(prodCount.Text));

            }
            catch (Exception)
            {

            }
            UCModalWindows.BindTrash();
        }

        protected void bAddModToTrash_ServerClick(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(((Button)sender).CommandArgument);
                var tm = (from s in db.ProductModifiactions where s.Id == id select s).ToList()[0];
                ((Button)sender).Text = "Добавлено";
               ((CTrashOrder)(Session["CTrash"])).AddModification(_product, Convert.ToInt32(prodCount.Text),tm);

            }
            catch (Exception)
            {

            }

            UCModalWindows.BindTrash();

        }

     
    }
}