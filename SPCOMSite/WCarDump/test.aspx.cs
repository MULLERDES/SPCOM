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
    
    public partial class test : System.Web.UI.Page
    {
        private SiteDBEntities db = new SiteDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var spserv = (from s in db.SPServices
            //              where s.Id == 2
            //              select s).ToList();
            //spserv[0].RawShort = "<h1 > Cool</h1>";
            //db.SaveChanges();
            //MailMessage message = new MailMessage();
            //message.To.Add(new MailAddress("andrey_melnik_90@mail.ru")); // кому отправлять  
            //message.Subject = "Тема"; // тема письма  
            //message.Body = "Ваше сообщение";
            //message.From = new MailAddress("amelnikd@gmail.com");
            //SmtpClient client = new SmtpClient("smtp.gmail.com");
            //client.Port = 25; // указываем порт  

            //client.Credentials =
            //    new NetworkCredential("amelnikd@gmail.com", "Sanik2106");

            //client.Send(message);  // отправить  
            //MailMessage message = new MailMessage();
            //message.To.Add(new MailAddress("amelnikd@gmail.com")); // кому отправлять  
            //message.Subject = "Тема"; // тема письма  
            //message.Body = "Ваше сообщение";
            //message.From = new MailAddress("andrey_melnik_90@mail.ru");
            //SmtpClient client = new SmtpClient("smtp.mail.ru");
            //client.Port = 25; // указываем порт  

            //client.Credentials =
            //    new NetworkCredential("andrey_melnik_90@mail.ru", "Sanik2106");

            //client.Send(message);  
            
            //// отправить  
            //SmtpClient Smtp = new SmtpClient("smtp.mail.ru", 465);
            //Smtp.Credentials = new NetworkCredential("andrey_melnik_90", "Sanik2106"); 
            ////Smtp.EnableSsl = false; 
 

            //MailMessage Message = new MailMessage();
            //Message.From = new MailAddress("andrey_melnik_90@mail.ru");
            //Message.To.Add(new MailAddress("amelnikd@gmail.com"));
            //Message.Subject = "Заголовок";
            //Message.Body = "Сообщение";
            //Smtp.Send(Message);
        }
    }
}