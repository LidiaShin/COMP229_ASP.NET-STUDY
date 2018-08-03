using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ClassLabs
{
    public partial class week12_Rquiz4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void check_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("data source = laptop-l82n2tn1\\sqlexpress; database=DSMyDB; integrated security=SSPI");
            cn.Open();

            SqlCommand cmd = new SqlCommand("Select * from DSMyDB where uName='" + uName.Text + "' and pWord ='" + pWord.Text + "'", cn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("week12_RquizS.aspx");
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
                        Response.Redirect("week12_RquizF.aspx");
                        break;


                }
            }


        }
    }
}