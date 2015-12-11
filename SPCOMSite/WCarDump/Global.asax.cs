using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using WCarDump.Models;

namespace WCarDump
{
    public class MvcApplication : System.Web.HttpApplication
    {
        private SiteDBEntities_Users dbUsers = new SiteDBEntities_Users();
      
        public  string UserName
        {
            set
            {
                Session["susername"] = value;
            }
        }
        public string UserID
        {
            set
            {
                Session["suserid"] = value;
            }
        }
        
        public List<Int32> Products
        {
            set
            {
                Session["TrashProductID"] = value; 
            }
            get
            {
                return (List<int>)Session["TrashProductID"];
            }
         
        }


        


        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }


        ShoProductsDBEntities dbProducts = new ShoProductsDBEntities();

        protected void Session_Start(object sender, EventArgs args)
        {
            //{
            //    Session["TrashProducts"] = (from s in dbProducts.Products select s).ToList();
            //    Session["TrashModifications"] = (from s in dbProducts.ProductModifiactions select s).ToList();
            //}
            {
                Session["TrashProducts"] = new List<Product>();
                Session["TrashModifications"] = new List<ProductModifiaction>();
            }
            {
                Session["CTrash"] = new CTrashOrder();
            }

            //UserName = UserID = "";
            //User CurrentUser=null;
            //HttpCookie uidCookie, hashCookie;
            //uidCookie = Request.Cookies["muserid"];
            //hashCookie = Request.Cookies["mhash"];
            //if (uidCookie!=null){
            //        try{
            //            CurrentUser = DBFinder.FindUser(dbUsers, Convert.ToInt32(uidCookie.Value.ToString()));
            //            InSiteLogin log = DBFinder.FindInsiteLogin(dbUsers,hashCookie.Value);
            //            if (DateTime.Now > log.expirydate)
            //                throw new Exception();
            //            if (hashCookie.Value.ToString() != log.md5hash)
            //                throw new Exception();
            //            UserName = CurrentUser.FirstName ;
            //            UserID = CurrentUser.Id.ToString();
            //        }
            //        catch(Exception)
            //        {
            //            CurrentUser = null;
                       
            //            return;
            //        }
                    
            //}
           
        }
    }
}
