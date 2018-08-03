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
        string username { get; set; }
        string password { get; set; }
        string childBirthday { get; set; }
        string phone { get; set; }
        string email { get; set; }
        protected void check_Click(object sender, EventArgs e)
        {
            try
            {
                username = uName.Text;
                password = pWord.Text;
                childBirthday = Calendar1.SelectedDate.ToString("dd MMMM - yyyy");
                phone = Phone.Text;
                email = Email.Text;



                Info infoCheck = new Info(username, password,childBirthday,phone,email);
                ConnectClass.checkInfo(infoCheck);
                //string msg = "Register Successfully!";
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SomeKey", "alert('Some alert')", true);
                //Response.Write("<script>alert('" + msg + "')</script>");
                //Response.Redirect("login.aspx");

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Successfully Registered!');");
                Response.Write("document.location.href='login.aspx';");
                Response.Write("</script>");

            }
            catch
            {
                result.Text = "Register Failed!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            cBirthdayDisplay.Text = "Your kid's birthday is : " + Calendar1.SelectedDate.ToString("dd MMMM - yyyy");
            // Calendar1.Visible = false;
        }
    }
}