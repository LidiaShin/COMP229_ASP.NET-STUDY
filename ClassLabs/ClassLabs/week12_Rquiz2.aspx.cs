using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassLabs
{
    public partial class week12_Rquiz2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("data source = laptop-l82n2tn1\\sqlexpress; database=DSMyDB; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand("Select * from DSMyDB", cn);
            cn.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            cn.Close();
        }
    }
}