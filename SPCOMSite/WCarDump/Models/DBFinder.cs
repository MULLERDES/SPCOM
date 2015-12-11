using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCarDump.Models
{
    public class DBFinder
    {

        public static ProductCategory FindProductsCategory(ShoProductsDBEntities db, string name)
        {
            var list = (from u in db.ProductCategories
                         where u.Name.ToLower() == name.ToLower()
                         select u).ToList();
            if (list.Count > 0)
                return list[0];
            return null;
        }
        public static ServicesCategory FindProductsCategory(ShoServicesDBEnt db, string name)
        {
            var list = (from u in db.ServicesCategories
                        where u.Name.ToLower() == name.ToLower()
                        select u).ToList();
            if (list.Count > 0)
                return list[0];
            return null;
        }

        public static ServicesCategory FindProductsCategory(ShoServicesDBEnt db, int id)
        {
            var list = (from u in db.ServicesCategories
                        where u.Id == id
                        select u).ToList();
            if (list.Count > 0)
                return list[0];
            return null;
        }


        public static ProductCategory FindProductsCategory(ShoProductsDBEntities db, int id)
        {
            var list = (from u in db.ProductCategories
                        where u.Id==id
                        select u).ToList();
            if (list.Count > 0)
                return list[0];
            return null;
        }
        public static User FindUser(SiteDBEntities_Users db, string EMAIL)
        {
            var users = (from u in db.Users
                         where u.Email.ToLower() == EMAIL.ToLower()
                         select u).ToList();
            if (users.Count > 0)
                return users[0];
            return null;
        }
        public static User FindUser(SiteDBEntities_Users db, int userid)
        {
            var users = (from u in db.Users
                         where u.Id==userid
                         select u).ToList();
            if (users.Count > 0)
                return users[0];
            return null;
        }
        public static InSiteLogin FindInsiteLogin(SiteDBEntities_Users db,string h)
        {
            DateTime date = DateTime.Now;
            var logins = (from u in db.InSiteLogins
                         where u.md5hash==h&&u.expirydate>date
                         select u).ToList();
            if (logins.Count > 0)
                return logins[logins.Count-1];
            return null;
        }

        public static bool PermissionAdmin(Page context, SiteDBEntities_Users db)
        {
            try
            {
                 int id = Convert.ToInt32(context.Session["suserid"].ToString() == ""?"0": context.Session["suserid"].ToString());
                            if (id == 0) return false;

                            var user = (from s in db.Users where s.Id == id select s).ToList();

                            if (user != null && user.Count > 0 && user[0].PermissionID == 1)
                                return true;
                            return false;
            }
            catch(Exception)
            {
                return false ;
            }
           
        }


        public static Control FindControlInRepeater(Repeater rep,string id)
        {
            if (rep == null || rep.Items.Count == 0)
                return null;
            for (int i = 0; i < rep.Items.Count; i++)
            {
                Control sel = rep.Items[i].FindControl(id);
                if (sel != null)
                {
                    return sel;
                }

            }
            return null;
        }

        public static List<ProductCategory> PrepareList(List<ProductCategory> lst, int parentCategory, int depth = 0)
        {
            List<ProductCategory> ret = new List<ProductCategory>();
            var fl = lst.FindAll(tf => tf.ParentCatId == parentCategory && tf.Id != parentCategory);
            foreach (var item in fl)
            {
                item.Depth = depth;
                ret.Add(item);
                var tll = PrepareList(lst, item.Id, depth + 1);
               
                ret.AddRange(tll.ToArray());

            }
            return ret;
        }
        public static List<ServicesCategory> PrepareList(List<ServicesCategory> lst, int parentCategory, int depth = 0)
        {
            List<ServicesCategory> ret = new List<ServicesCategory>();
            var fl = lst.FindAll(tf => tf.ParentCatID == parentCategory && tf.Id != parentCategory);
            foreach (var item in fl)
            {

                ret.Add(item);
                var tll = PrepareList(lst, item.Id, depth + 1);

                ret.AddRange(tll.ToArray());

            }
            return ret;
        }
    }
}