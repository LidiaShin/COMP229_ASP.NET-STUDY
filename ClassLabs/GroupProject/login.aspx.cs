using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace GroupProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("data source = laptop-l82n2tn1\\sqlexpress; database=groupProject; integrated security=SSPI");
            cn.Open();

            SqlCommand cmd = new SqlCommand("Select * from Customer where email='" + eMail.Text + "' and Password ='" + pWord.Text + "'", cn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Session["login"] = eMail.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                hdn.Value = "" + (Int32.Parse(hdn.Value) + 1);
                int num = Int32.Parse(hdn.Value);

                switch (num)
                {
                    case 1:
                        result.Text = "failed 1 time";
                        break;

                    case 2:
                        result.Text = "failed 2 times";
                        break;

                    case 3:
                        result.Text = "failed 3 times";
                        break;

                    default:
                        Response.Redirect("home.aspx");
                        break;


                }
            }
        }
    }
}
