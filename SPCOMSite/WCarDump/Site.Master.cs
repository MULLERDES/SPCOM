using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCarDump.Models;

namespace WCarDump
{
    public partial class Site : System.Web.UI.MasterPage
    {
        SiteDBEntities_Users dbUsers = new SiteDBEntities_Users();

        public string UserID
        {
            set
            {
                Session["suserid"] = value;
            }
        }
        public string UserName
        {
            set
            {
                Session["susername"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            {
                //проверка печенек
                UserName = UserID = "";
                User CurrentUser = null;
                HttpCookie uidCookie, hashCookie;
                uidCookie = Request.Cookies["muserid"];
                hashCookie = Request.Cookies["mhash"];
                //if (uidCookie != null)
                //{
                try
                {
                    CurrentUser = DBFinder.FindUser(dbUsers, Convert.ToInt32(uidCookie.Value.ToString()));
                    InSiteLogin log = DBFinder.FindInsiteLogin(dbUsers, hashCookie.Value);
                    if (DateTime.Now > log.expirydate)
                        throw new Exception();
                    if (hashCookie.Value.ToString() != log.md5hash)
                        throw new Exception();
                    UserName = CurrentUser.FirstName;
                    UserID = CurrentUser.Id.ToString();
                    enterdiv.Visible = false;
                    logoutDiv.Visible = true;
                }
                catch (Exception)
                {
                    CurrentUser = null;
                    enterdiv.Visible = true;
                    logoutDiv.Visible = false;
                    return;
                }

                //}
            }
            if (DBFinder.PermissionAdmin(this.Page, dbUsers))
            {
                hrefAdmin.Visible = true;
            }
            else hrefAdmin.Visible = false;

        }
        protected void bAdminClick(object sender, EventArgs e)
        {
            //if (DBFinder.PermissionAdmin(Page, dbusers))
            //{
            //    Response.Redirect("AdminAccountInfo.aspx");
            //}
        }
        protected void bCreateUserClick(object sender, EventArgs e)
        {
            ////Get the cookie name the user entered
            //String strCookieName = "muserid";

            ////Grab the cookie
            //HttpCookie cookie = Request.Cookies[strCookieName];
            //HttpCookie ck2 = Request.Cookies["mhash"];
            ////Check to make sure the cookie exists
            //if (null == cookie)
            //{
            //    Response.Write("Cookie not found. <br><hr>");
            //}
            //else
            //{
            //    //Write the cookie value
            //    String strCookieValue = cookie.Value.ToString();
            //    Response.Write("The " + strCookieName + " cookie contains: <b>"
            //                          + strCookieValue + "</b><br><hr>" +
            //                          ck2.Value.ToString() + "</b><br><hr>");
            //}

       
            



               
        }
        protected void bExitClick(Object s, EventArgs a)
        {
            HttpCookie ckmuserid = Request.Cookies["muserid"];
            if (ckmuserid != null)
            {
                ckmuserid.Expires = DateTime.Now.AddYears(-1);
                Response.Cookies.Add(ckmuserid);
            }
            HttpCookie cskmuserid = Request.Cookies["mhash"];
            if (cskmuserid != null)
            {
                cskmuserid.Expires = DateTime.Now.AddYears(-1);
                Response.Cookies.Add(cskmuserid);
            }
            Session.Abandon();
            Response.Redirect("default.aspx");
        }


        protected String HelloOrLogin()
        {

            return Session["susername"].ToString() + Session["suserid"].ToString();
        }
        protected String MyMethodCall()
        {

            return Session["susername"].ToString() + Session["suserid"].ToString();
        }

        protected void bLoginClick(Object sender, EventArgs e)
        {
            //  Create a new cookie, passing the name into the constructor
            string userEmail = tbloginEmail.Value;
            string password = tbloginPass.Value;
            User _user = DBFinder.FindUser(dbUsers, userEmail);
            if (_user != null)
            {
                string passwordHash = Security.MD5H.GetHash(password);
                if (_user.Password == passwordHash)
                {
                    Session["susername"] = _user.FirstName;
                    Session["suserid"] = _user.Id.ToString();
                    int uid = _user.Id;
                    string hash = DateTime.Now.ToString() + DateTime.Now.Millisecond.ToString() + uid.ToString();
                    hash = Security.MD5H.GetHash(hash);

                    DateTime Exp = DateTime.Now.AddDays(10);

                    HttpCookie cookie = new HttpCookie("muserid");
                    cookie.Value = uid.ToString();
                    cookie.Expires = Exp;
                    //Add the cookie
                    Response.Cookies.Add(cookie);

                    HttpCookie chash = new HttpCookie("mhash");
                    chash.Value = hash;
                    chash.Expires = Exp;
                    Response.Cookies.Add(chash);

                    InSiteLogin login = new InSiteLogin()
                    {
                        expirydate = Exp,
                        md5hash = hash,
                        userid = uid
                    };

                    dbUsers.InSiteLogins.Add(login);
                    dbUsers.SaveChanges();
                    //Response.Redirect("default.aspx");
                    enterdiv.Visible = false;
                    logoutDiv.Visible = true;
                    if (_user.PermissionID != 1)
                        hrefAdmin.Visible = false;
                }
                else
                {
                    Response.Redirect("info.aspx?type=1&messageid=0");
                }
            }
            else
            {
                logoutDiv.Visible = false;
                enterdiv.Visible = true;
                UserID = null;
                UserName = null;
                bExitClick(this, new EventArgs());
                Response.Redirect("info.aspx?type=1&messageid=0");
            }


        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {

        }

        protected void bContacts_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Contacts.aspx#rhead");
        }

        protected void bRegisterUser_Click(object sender, EventArgs e)
        {
            User us = DBFinder.FindUser(dbUsers, tbregEmail.Value);
            if (us == null && tbregpass1.Value == tbregpass2.Value)
            {
                User nuser = new User()
                {
                    Email = tbregEmail.Value,
                    FirstName = tbregName.Value,
                    LastName = tbregFam.Value,
                    IsConfirmed = true,
                    Password = Security.MD5H.GetHash(tbregpass1.Value),
                    Login = tbloginEmail.Value,
                    PermissionID = 2,
                    RegistrationDate = DateTime.Now,
                    Tel = tbregTel.Value,
                    Description = "descr"
                };
                dbUsers.Users.Add(nuser);
                dbUsers.SaveChanges();

                Response.Redirect("info.aspx?type=1&messageid=" + (int)INFO_MESSAGE_TYPE.COFIRM_USER_AFTER_REGISTRATION);

            }
            else
            {
                Response.Redirect("info.aspx?type=1&messageid=" + (int)INFO_MESSAGE_TYPE.USER_LAREADY_CONTAINS);
            }

        }

        protected void blogout_Click(object sender, EventArgs e)
        {
            bExitClick(this, e);
        }

        protected void bRestorePassword_Click(object sender, EventArgs e)
        {
            string userEmail = tbRestoreEmail.Value;
            //string password = tbloginPass.Value;
            User _user = DBFinder.FindUser(dbUsers, userEmail);
            if (_user != null)
            {
                {
                    try
                    {
                        var fromAddress = new MailAddress("spidometrkiev@gmail.com", "Офис SPCOM");
                        var toAddress = new MailAddress(_user.Email, _user.FirstName);
                        const string fromPassword = "karnaval007";
                        const string subject = "Cлужба поддержки клиентов компании SPCOM";

                        string body =

                        @"
                <style>
                    p{
                    font-size:16px;
                    }
                </style>
                <div>
                    
                    <hr/>
                        <p>
                          для вас будет сформирован новый пароль для входа на сайт.
                          перейдите по ссылке, для дальнейших инструкций:  
<a style""color:blue;"" href="""+Request.Url.Authority+@"/info.aspx?type=2&userhash=" + _user.NEWPASSHASH + @"&userid=" + _user.Id.ToString() + @""">"
+Request.Url.Authority+@"/info.aspx?type=2&userhash=" + _user.NEWPASSHASH + @"&userid=" + _user.Id.ToString()+@"</a>
                        </p>
                    <hr/>
                    <h5>Вы задали вопрос:</h5>
                        <p>
                        
                        </p>
                    <hr/>
                    <p>
                  
                    </p>
                    С Уважением, администрация компании SPCOM.
                    </div>
                    <div>
                    +38(044)228-12-17<br/>
                    +38(068)122-80-08<br/>
                    +38(050)428-80-08<br/>
                    Перейти на сайт SPCOM:
                    <ahref=""http:////spcom-auto.net"" style=""text-decoration:none;"">
                    www.spcom-auto.net
                    </a>
                </div>";


                        var smtp = new SmtpClient
                        {
                            Host = "smtp.gmail.com",
                            Port = 587,
                            EnableSsl = true,
                            DeliveryMethod = SmtpDeliveryMethod.Network,
                            UseDefaultCredentials = false,
                            Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                        };
                        using (var message = new MailMessage(fromAddress, toAddress)
                        {
                            Subject = subject,
                            IsBodyHtml = true,
                            Body = body,
                        })
                        {
                            smtp.Send(message);
                            Response.Redirect("info.aspx?type=" + (int)INFO_PAGE_TYPE.INFORMATION + "&messageid=" + (int)INFO_MESSAGE_TYPE.RESTORE_NEXT_INSTRUCTION);

                        }

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex);
                    }
                }
            }
            else
            {
                Response.Redirect("info.aspx?type=" + (int)INFO_PAGE_TYPE.INFORMATION + "&messageid=" + (int)INFO_MESSAGE_TYPE.USER_FROM_EMAIL_NOT_FOUND);

            }
        }
    }
}