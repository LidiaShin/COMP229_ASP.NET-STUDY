using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Text;

namespace GroupProject
{
    public partial class comment : System.Web.UI.Page
    {
        // string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        

        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["username"] != null)
            {
                usernamelbl.Text = "<b><font color=pink>" +
                Session["UserName"] + "</font>";
                usernametxt.Visible = false;
            }

            else
            {
                usernamelbl.Visible = false;
                usernametxt.Visible = true;

            }
        }

       




    }
}
    