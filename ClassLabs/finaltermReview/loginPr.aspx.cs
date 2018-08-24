using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finaltermReview
{
    public partial class loginPr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["login"] != null && !IsPostBack)
            {
                //sessionCheck.Text = "  welcome!!!";
                //eMail.Visible = false;
                //pWord.Visible = false;
                //check.Visible = false;
                //myPage.Visible = true;
                //logout.Visible = true;
            }
        }
        string email { get; set; }
        string password { get; set; }

        string username;

        protected void check_Click(object sender, EventArgs e)
        {
            email = eMail.Text;
            password = pWord.Text;

            SignUpInfo newUserInfo = new SignUpInfo(username,email, password);
            connectionClass.SignIn(newUserInfo);


            if (newUserInfo.eMailAddress == "email matching")
            {
                Session["login"] = newUserInfo.userName;
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('welcome');");
                //Response.Write("document.location.href='login.aspx';");
                Response.Write("</script>");
                sessionCheck.Text = newUserInfo.userName + " Welcome!!";
                logintable.Visible = false;



            }

            else
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('not matching');");
                //Response.Write("document.location.href='login.aspx';");
                Response.Write("</script>");
            }

        }
    }
}