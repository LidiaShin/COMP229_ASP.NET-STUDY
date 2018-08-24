using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finaltermReview
{
    public partial class signupPr : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string username { get; set; }
        string email { get; set; }
        string password { get; set; }
        protected void check_Click(object sender, EventArgs e)
        {
            username = uName.Text;
            email = eMail.Text;
            password = pWord.Text;


          if (Regex.IsMatch(email, "^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$"))
            {
                emailCheck.Text = "valid email";


            SignUpInfo newUserInfo  = new SignUpInfo(username, email, password);
            connectionClass.AvoidDuplicateEmail(newUserInfo);

            if (newUserInfo.eMailAddress == "Existing Email")
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please use other email');");
                //Response.Write("document.location.href='login.aspx';");
                Response.Write("</script>");
                emailCheck.Text = newUserInfo.eMailAddress;
                }

            else
            {
                try
                {
                    connectionClass.SignUp(newUserInfo);
                    //Response.Write("<script type='text/javascript'>");
                    //Response.Write("alert('Thank you for sign up! ');");
                    //Response.Write("</script>");
                    //ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('Thank you');window.location.href='http://www.naver.com'</script>");
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('Thank you');</script>");
                    }
                catch
                {
                    Response.Write("<script type='text/javascript'>");
                    Response.Write("alert('Failed ');");
                    Response.Write("</script>");
                }
                finally
                {
                }
            }
            }

            else
            {
                emailCheck.Text = "invalid email";
            }



           
        }
    }
}