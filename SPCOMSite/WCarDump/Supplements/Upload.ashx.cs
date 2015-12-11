using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WCarDump.Supplements
{
    /// <summary>
    /// Сводное описание для Upload
    /// </summary>
    public class Upload : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string nm = DateTime.Now.Year.ToString() + DateTime.Now.DayOfYear.ToString() +
                DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() +
                DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();

            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Привет всем!");
            HttpPostedFile uploads = context.Request.Files["upload"];
            string CKEditorFuncNum = context.Request["CKEditorFuncNum"];

            ///string file = System.IO.Path.GetFileName(uploads.FileName);
            string file = System.IO.Path.GetFileNameWithoutExtension(uploads.FileName) +"."+
                nm + System.IO.Path.GetExtension(uploads.FileName);
            uploads.SaveAs(context.Server.MapPath(".") + "\\UplImages\\" + file);
            string url = "Supplements/UplImages/" + file;
            context.Response.Write("<script>window.parent.CKEDITOR.tools.callFunction(" + CKEditorFuncNum + ", \"" + url + "\");</script>");
            context.Response.End();       
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}