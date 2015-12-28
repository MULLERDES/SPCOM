using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;
namespace WCarDump
{
    public partial class ShopServicesDetails : System.Web.UI.Page
    {
        private int id;
        private Service _service;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["id"] ?? "0");
                ShoServicesDBEnt db = new ShoServicesDBEnt();
                var servl = (from s in db.Services where s.Id == id select s).ToList();
                if (servl != null && servl.Count > 0)
                    _service = servl[0];
            }
            catch (Exception) {
                id = 0;
            }
        }
        protected string LoadPrice()
        {
            if (_service != null)
            {
                var price = _service.Price;
                if(price == 0)
                    return "договорная";

                return "oт "+Converter.ToPrice( _service.Price.ToString());
            }
            return "Уточняйте->";
        }
        protected string LoadDetails()
        {
            if (_service != null)
            {
                return _service.RawData;
            }
            return "404";
        }
        
        
        protected string LoadPrice2()
        {
            if (_service != null)
            {
                return _service.Price2.ToString() ;
            }
            return "404";
        }
        protected string LoadName()
        {
            if (_service != null)
            {
                return _service.Name;
            }
            return "404";
        }
    }
}