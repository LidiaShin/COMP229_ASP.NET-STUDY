using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassLabs
{
    public partial class week10_db : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("datasource=.\\laptop-l82n2tn1\\sqlexpress; database=week10review; integrated security=SSPI");


            SqlCommand cmd = new SqlCommand("Select * from tblMyInfo", cn);
            cn.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            cn.Close();


        }
    }
}