using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;
namespace WCarDump
{
   
    public enum INFO_MESSAGE_TYPE
    {
        WRONG_PASSWORD,
        RESTORE_NEXT_INSTRUCTION,
        USER_FROM_EMAIL_NOT_FOUND,
        COFIRM_USER_AFTER_REGISTRATION,
        USER_LAREADY_CONTAINS
    }
    public enum INFO_PAGE_TYPE
    {
        INFORMATION= 1,
        RESPOREPASSWROD =2
    }
    public partial class info : System.Web.UI.Page
    {
        public Dictionary<INFO_MESSAGE_TYPE, string> Messages = new Dictionary<INFO_MESSAGE_TYPE, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Messages.Add(INFO_MESSAGE_TYPE.WRONG_PASSWORD, "Не верный пароль");
            Messages.Add(INFO_MESSAGE_TYPE.RESTORE_NEXT_INSTRUCTION, "Вам на указанный email высланы инструкции по дальнейшему восстановлению пароля");
            Messages.Add(INFO_MESSAGE_TYPE.USER_FROM_EMAIL_NOT_FOUND, "Не найден пользователь с указанным email ");
            Messages.Add(INFO_MESSAGE_TYPE.COFIRM_USER_AFTER_REGISTRATION, "Теперь вы можете использовать указанный email и пароль для входа на сайт");
            Messages.Add(INFO_MESSAGE_TYPE.USER_LAREADY_CONTAINS, "Пользователь уже существует, воспользуйтесь формой для входа на сайт");
            INFO_PAGE_TYPE mtype =(INFO_PAGE_TYPE)(Convert.ToInt32( Request.QueryString["type"] ?? "0"));
            switch (mtype)
            {
                case INFO_PAGE_TYPE.INFORMATION:
                    
                    try
                    {

                        string mes = (Request.QueryString["messageid"]??"");
                        INFO_MESSAGE_TYPE m = (INFO_MESSAGE_TYPE)(Convert.ToInt32(mes));

                        mainMessage.Text = Messages[m];


                    }
                    catch (Exception ex)
                    {
                        mainMessage.Text = ex.Message;
                    }
                    break;
                case INFO_PAGE_TYPE.RESPOREPASSWROD:
                    try
                    {
                        string userid = Request.QueryString["userid"] ?? "0";
                        string mhash = Request.QueryString["userhash"] ?? "";

                        SiteDBEntities_Users db = new SiteDBEntities_Users();
                        WCarDump.Models.User user = DBFinder.FindUser(db, Convert.ToInt32(userid));
                        string hhh = user.NEWPASSHASH;
                        if (mhash == hhh)
                        {
                            // генерируем новый и сохраняем
                            string snewpass = Security.MD5H.GetHash(DateTime.Now.Millisecond + "qqwe").Substring(1, 5).ToLower() ;
                            user.Password = Security.MD5H.GetHash( snewpass) ;
                            db.SaveChanges();
                            mainMessage.Text = "Новый пароль: " + snewpass;
                        }
                    }
                    catch (Exception)
                    {

                    }
                    break;
                default: break; 
            }
             
            

           

           


        }
    }
}