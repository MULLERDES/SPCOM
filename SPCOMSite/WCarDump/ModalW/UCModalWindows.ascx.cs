using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WCarDump.Models;
namespace WCarDump.ModalW
{
    public partial class UCModalWindows : System.Web.UI.UserControl
    {
        public string FromUrl { get; set; }
        public bool isloadTrash = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/js/jquery-1.11.3.js",

            });
            tbServiceQuestionFromName.Focus();


            {
                try
                {
                    SiteDBEntities_Users dbUsers = new SiteDBEntities_Users();
                    int userid = Convert.ToInt32(Session["suserid"] ?? "0");
                    if (userid > 0)
                    {
                        User _user = DBFinder.FindUser(dbUsers, userid);
                        if (_user != null)
                        {


                            tbServiceQuestionFromName.Text = _user.FirstName + " " + _user.LastName;
                            tbServiceQuestionFromEmail.Text = _user.Email;
                            tbServiceQuestionAutoModelEmail.Text = _user.Email;
                            tbServiceQuestionAutoModelFromName.Text = _user.FirstName + " " + _user.LastName;
                            tbBuyEmail.Text = _user.FirstName + " " + _user.LastName;
                            tbBuyEmail.Text = _user.Email;
                            tbBuyTel.Text = _user.Tel;
                        }
                    }
                }
                catch (Exception)
                {

                }
               

                
            }


            if (isloadTrash
                &&!IsPostBack)
            {
                BindTrash();
                
            }
       }


        public void BindTrash()
        {
            #region
            //List<Product> _prod = (List<Product>)Session["TrashProducts"];
            //List<ProductModifiaction> _mods = (List<ProductModifiaction>)Session["TrashModifications"];
            //repProducts.DataSource = _prod;


            //repProducts.ItemDataBound += new RepeaterItemEventHandler(delegate (object sen, RepeaterItemEventArgs args) {
            //    if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            //    {


            //        Repeater rmods = (Repeater)args.Item.FindControl("repMods");
            //        if (rmods != null)
            //        {
            //            rmods.DataSource = _mods.FindAll(tf => tf.ProductId == ((Product)args.Item.DataItem).Id);
            //            rmods.ItemDataBound += new RepeaterItemEventHandler(
            //                delegate(object sndr, RepeaterItemEventArgs rgs)
            //                {
            //                    if (rgs.Item.ItemType== ListItemType.Item||
            //                    rgs.Item.ItemType== ListItemType.AlternatingItem)
            //                    {
            //                        //Button tbtn = (Button)rgs.Item.FindControl("bremoveModItem");
            //                        //tbtn.ID = "brm"+((ProductModifiaction)rgs.Item.DataItem).Id.ToString();

            //                        //{
            //                        //    PlaceHolder ph = (PlaceHolder)rgs.Item.FindControl("phButton");
            //                        //    Button nb = new Button();
            //                        //    nb.ID = "rbutton2";
            //                        //    nb.Click += (bsender, bargs) =>
            //                        //    {

            //                        //    };
            //                        //    nb.Text = "Pesdec";
            //                        //    ph.Controls.Add(nb);
            //                        //}
            //                    }
            //                } 
            //                ); 

            //            rmods.DataBind();
            //        }
            //    }
            //});

            //repProducts.DataBind();
            #endregion
            CTrashOrder _order = (CTrashOrder)Session["CTrash"];
            if (_order != null)
            {
                repProducts.DataSource = _order;
                repProducts.ItemDataBound += (osender, oargs) => {
                    if (oargs.Item.ItemType == ListItemType.Item || oargs.Item.ItemType == ListItemType.AlternatingItem)
                    {
                        Repeater rmods = (Repeater)oargs.Item.FindControl("repMods");
                        if (rmods != null)
                        {
                            rmods.DataSource = _order.Items[oargs.Item.ItemIndex].Modifications;
                            rmods.ItemDataBound += (modssernder, modsargs) => {
                                if (modsargs.Item.ItemType== ListItemType.Item||modsargs.Item.ItemType== ListItemType.AlternatingItem)
                                {
                                    Button b = (Button) modsargs.Item.FindControl("bremoveModItem");
                                    if (b != null)
                                    {
                                        b.CommandName = ((CTrashItem)(oargs.Item.DataItem)).Product.GUID;
                                    }
                                }
                            };
                            rmods.DataBind();
                        }
                    }
                    if (oargs.Item.ItemType== ListItemType.Footer)
                    {
                        Label l = (Label)oargs.Item.FindControl("SummaryPrice");
                        l.Text = _order.Price.ToString();
                    }
                };
                repProducts.DataBind();
                
            }
        }

        protected void SendServicesQuestion_ServerClick(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                try {
                    var fromAddress = new MailAddress("spidometrkiev@gmail.com", "Офис SPCOM");
                    var toAddress = new MailAddress(tbServiceQuestionFromEmail.Text, tbServiceQuestionFromName.Text);
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
                    <h3>Здравствуйте, <strongstyle=""colornavy;> " + tbServiceQuestionFromName.Text + @"</strong></h3>
                    <hr/>
                        <p>
                        Ваш вопрос успешно отправлен в компанию SPCOM.
                        В ближайшее время ваш запрос будет обработан.
                        Спасибо за обращение.
                        </p>
                    <hr/>
                    <h5>Вы задали вопрос:</h5>
                        <p>
                          " + servFromMessage.Text + @"
                        </p>
                    <hr/>
                    <p>
                    Запрос был сформирован на странице: " + Request.Url.ToString() + @"
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
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
            }

        }

        protected void bTest_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void asdsadasd_ServerClick(object sender, EventArgs e)
        {
          
            {
                
            }
        }

    

        protected void bremoveModItem_Click(object sender, EventArgs e)
        {
            var b = (Button)sender;
            int modid = Convert.ToInt32(b.CommandArgument.ToString());
            ((CTrashOrder)(Session["CTrash"])).RemoveMod(b.CommandName, modid);

            BindTrash();
        }

        protected void bremoveProduct_Click(object sender, EventArgs e)
        {
            var b = (Button)sender;
            ((CTrashOrder)(Session["CTrash"])).RemoveProduct(b.CommandName);
            BindTrash();
        }

        protected void btnServiceQuestionAutoModel_ServerClick(object sender, EventArgs e)
        {
            try
            {
                var fromAddress = new MailAddress("spidometrkiev@gmail.com", "Офис SPCOM");
                var toAddress = new MailAddress(tbServiceQuestionAutoModelEmail.Text, tbServiceQuestionAutoModelFromName.Text);
                const string fromPassword = "karnaval007";
                const string subject = "Cлужба поддержки клиентов компании SPCOM";

                string body =

                @"
                <style>
                    p{
                    font-size:16px;
                    }
                    ul{
                       list-style: none;
                    }
                    ul li{
                    font-size:16px;
                    }
                </style>
                <div>
                    <h3>Здравствуйте, <strongstyle=""colornavy;> " + tbServiceQuestionAutoModelFromName.Text + @"</strong></h3>
                    <hr/>
                        <p>
                        Ваш вопрос успешно отправлен в компанию SPCOM.
                        В ближайшее время ваш запрос будет обработан и вы получите ответ.
                        Спасибо за обращение.
                        </p>
                    <hr/>
                    <h5>Вы указали следующие параметры </h5>
                        <ul>
<li>Марка: " + tbServiceQuestionAutoModelBrand.Text + @"</li>
<li>Модель: " + tbServiceQuestionAutoModelModel.Text + @"</li>
<li>Год: " + tbServiceQuestionAutoModelYear.Text + @"</li>

                        </ul>
                        <p>
                           Доп. Сообщение: " + tbServiceQuestionAutoModelAddition.Text + @"
                        </p>
                    <hr/>
                    <p>
                    Запрос был сформирован на странице: " + Request.Url.ToString() + @"
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
                }
            }
            catch (Exception)
            {

            }
        }

        protected void btnbuy_ServerClick(object sender, EventArgs e)
        {

            var order = (CTrashOrder)Session["CTrash"];
            if (order != null)
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("<ul>");
                foreach (CTrashItem item in order)
                {

                    sb.Append("<li>" + item.Name + " кол-во" + item.Count + " цена: " + item.PriceString + "<ul>");
                    foreach (var moditem in item.Modifications)
                    {
                        sb.Append("<li>" + moditem.Name + " цена:" + moditem.PriceString + "</li>");
                    }
                    sb.Append("</ul></li>");
                }
                sb.Append("</ul>");


                try
                {
                    var fromAddress = new MailAddress("spidometrkiev@gmail.com", "Офис SPCOM");
                    var toAddress = new MailAddress(tbBuyEmail.Text, tbBuyName.Text);
                    const string fromPassword = "karnaval007";
                    const string subject = "Cлужба поддержки клиентов компании SPCOM";

                    string body =

                    @"
                <style>
                    p{
                    font-size:16px;
                    }
                    ul{
                       list-style: none;
                    }
                    ul li{
                    font-size:16px;
                    }
                </style>
                <div>
                    <h3>Здравствуйте, <strongstyle=""colornavy;> " + tbBuyName.Text + @"</strong></h3>
                    <hr/>
                        <p>
                        Ваш заказ успешно отправлен в компанию SPCOM.
                        В ближайшее время с вамисвяжутся для уточнения деталей
                        </p>
                    <hr/>
                    <h5>Вы выбрали следующие товары: </h5>" +

                    sb.ToString()
                        +@"
                        <p>
                           Доп. Сообщение: " + tbBuyDescription.Text + @"
                        </p>
                    <hr/>
                    <p>
                    Запрос был сформирован на странице: " + Request.Url.ToString() + @"
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
                    }
                }
                catch (Exception)
                {

                }
            }
        }
    }
}