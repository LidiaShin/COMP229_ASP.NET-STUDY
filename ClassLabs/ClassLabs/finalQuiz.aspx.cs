using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;

namespace ClassLabs
{
    public partial class finalQuiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {

            MailMessage msg = new MailMessage();
            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            try
            {
                msg.Subject = TextBox3.Text;
                msg.Body = TextBox4.Text;
                msg.From = new MailAddress(TextBox2.Text);
                msg.To.Add("lidiad.shin@gmail.com");
                msg.IsBodyHtml = true;
                client.Host = "smtp.gmail.com";
                System.Net.NetworkCredential basicauthenticationinfo = new System.Net.NetworkCredential("lidiad.shin@gmail.com", "1142311423");
                client.Port = int.Parse("587"); //if using SSL 465
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicauthenticationinfo;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Send(msg);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('failed.');", true);
            }


        }
    }
}