using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassLabs
{
    public partial class week12_Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void check_Click(object sender, EventArgs e)
        {
            try
            {
                
                string username = TextBox1.Text;
                string password = TextBox2.Text;

                Info infoCheck = new Info(username,password);
                ConnectionClass.CheckInfo(infoCheck);
                Label1.Text = "Success";
            }
            catch
            {
                Label1.Text = "Failed!";
            }

        }
    }
}