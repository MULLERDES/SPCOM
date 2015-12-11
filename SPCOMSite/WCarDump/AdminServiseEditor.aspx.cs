using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class AdminServiseEditor : System.Web.UI.Page
    {
        int _ServiceID
        {
            get { return (int)(ViewState["servid"] ?? -1); }
            set { ViewState["servid"] = value; }
        }
        ShoServicesDBEnt db = new ShoServicesDBEnt();

        List<ServicesCategory> _catlist;

 
        protected void Page_Load(object sender, EventArgs e)
        {
            _catlist = (from s in db.ServicesCategories select s).ToList();
            var tmp = _catlist[0];
            _catlist = DBFinder.PrepareList(_catlist, 1);
            _catlist.Insert(0, tmp);
           
            if (!IsPostBack)
            {
                SelCategory.DataSource = _catlist;
                SelCategory.DataBind();


                string nMode = Request.QueryString["mode"] ?? "null";
                string sid = Request.QueryString["id"] ?? "0";


                int id = Convert.ToInt32(sid);

                switch (nMode)
                {
                 
                    case "edit":
                        {
                            if (Convert.ToInt32(id) != 0)
                            {
                                var sl = (from s in db.Services where s.Id == id select s).ToList();
                                {
                                    if (sl != null && sl.Count > 0)
                                    {
                                        var ts = sl[0];
                                        tbName.Text = ts.Name;
                                        _ServiceID = id;
                                        tbShordDescription.Text = ts.Description;
                                        CKHEAD.Text = ts.RawData;
                                        imgPreview.ImageUrl = ts.ImageUrl;
                                        tbPrice.Text = ts.Price.ToString();
                                        int idcat = _catlist.FindIndex(tf => tf.Id == ts.CategoryId);
                                        if (idcat > 0)
                                        {
                                            SelCategory.SelectedIndex = idcat;
                                        }
                                    }
                                    else
                                    {
                                        Response.Redirect("AdminServiseList.aspx");
                                    }
                                }


                            }
                        }
                        break;
                    default:
                        Response.Redirect("AdminServiseList.aspx")
;
                        break;
                }
            }
        }

        protected void bRemoveRecord_Click(object sender, EventArgs e)
        {
           
            var current = (from s in db.Services where s.Id == _ServiceID select s).ToList();
            if (current != null && current.Count > 0)
            {
                db.Services.Remove(current[0]);
                db.SaveChanges();
                Response.Redirect("AdminServiseList.aspx");
            }
        }

        protected void tbSave_Click(object sender, EventArgs e)
        {
            var serv = (from s in db.Services where s.Id == _ServiceID select s).ToList();
            if (serv!=null&&serv.Count>0)
                {
                var s = serv[0];
                s.Name = tbName.Text;
                s.Description = tbShordDescription.Text;
                s.ImageUrl = imgPreview.ImageUrl;
                s.Price = Convert.ToDecimal(tbPrice.Text==""?"0":tbPrice.Text);
                s.RawData = CKHEAD.Text;
                try
                {
                    ServicesCategory sc = (from s1 in db.ServicesCategories where s1.Name == SelCategory.Value select s1).ToList()[0];
                    s.CategoryId = sc.Id;
                    db.SaveChanges();
                }
                catch (Exception)
                {

                }
                finally
                {
                    Response.Redirect("AdminServiseEditor.aspx?mode=edit&id=" + _ServiceID);

                }
                }
        }
    }
}