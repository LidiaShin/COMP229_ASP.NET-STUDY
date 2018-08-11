using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;




namespace GroupProject
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendEmail(object sender, EventArgs e)
        {
            using (MailMessage newemail = new MailMessage(emailAddress.Text, "ininicia@naver.com"))
            {
                newemail.Subject = emailSubject.Text;
                newemail.Body = emailContent.Text;
                if (fileAttach.HasFile)
                {
                    string FileName = Path.GetFileName(fileAttach.PostedFile.FileName);
                    newemail.Attachments.Add(new Attachment(fileAttach.PostedFile.InputStream, FileName));
                }
                newemail.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential(emailAddress.Text, emailPassword.Text);
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(newemail);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            }
        }
    }
    }
