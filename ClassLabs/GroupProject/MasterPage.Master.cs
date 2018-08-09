using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                loginBtn.Visible = false;
                MyPageBtn.Visible = true;
                logoutBtn.Visible = true;
            }
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            //Session.Clear();
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }
    }
}