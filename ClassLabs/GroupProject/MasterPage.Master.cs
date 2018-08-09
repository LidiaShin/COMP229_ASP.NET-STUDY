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
                login.Visible = false;
                myPage.Visible = true;
                logout.Visible = true;
            }


            else
            {
                login.Visible = true;
                myPage.Visible =false;
                logout.Visible = false;
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