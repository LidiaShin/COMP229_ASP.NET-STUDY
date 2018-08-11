using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class register : System.Web.UI.Page
    {
      
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string firstname { get; set; }
        string lastname { get; set; }
        string email { get; set; }
        string password { get; set; }

        protected void check_Click(object sender, EventArgs e)
        {


            firstname = fName.Text;
            lastname = lName.Text;
            email = eMail.Text;
            password = pWord.Text;

            Info infoCheck = new Info(firstname, lastname, email, password);
            ConnectClass.checkInfo(infoCheck);

            //string msg = "Register Successfully!";
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SomeKey", "alert('Some alert')", true);
            //Response.Write("<script>alert('" + msg + "')</script>");
            //Response.Redirect("login.aspx");

            if (infoCheck.eMailAddress == "already exist")
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please use other email');");
                //Response.Write("document.location.href='login.aspx';");
                Response.Write("</script>");
            }


            else
            {
               
                try
                {
                   Info infoRegister = new Info(firstname, lastname, email, password);
                   ConnectClass.registerInfo(infoRegister);
                   Response.Write("<script type='text/javascript'>");
                   Response.Write("alert('Register Success! ');");
                   //Response.Write("document.location.href='login.aspx';");
                   Response.Write("</script>");
                }

               catch
                  {
                  result.Text = "Register Failed!";
                  }
               }

           }
            }
        }