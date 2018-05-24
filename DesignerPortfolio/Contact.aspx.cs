using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


namespace DesignerPortfolio
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendEmail_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(form_email.Text);
                mail.To.Add("test@gmail.com");
                mail.From = new MailAddress("abc@gmail.com");
                mail.Subject = "sub";

                mail.Body = form_message.Text;

                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                smtp.Credentials = new NetworkCredential("ilsergente93@gmail.com", "55jey?google2017"); // ***use valid credentials***
                smtp.Port = 587;

                //Or your Smtp Email ID and Password
                smtp.EnableSsl = true;
                smtp.Send(mail);
                SendMailResult.Text = "Mail sent successfully";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                SendMailResult.Text = "C'è stato un problema con l'invio della mail";

            }
        }
    }
}