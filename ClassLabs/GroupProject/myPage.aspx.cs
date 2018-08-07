using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace GroupProject
{
    public partial class myPage : System.Web.UI.Page
    {

        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string uname = Session["UserName"].ToString();
               

                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string sQry = "Select * from cusList where uName='" + uname + "'";
                   
                SqlCommand cmd = new SqlCommand(sQry, con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                DataSet ds = new DataSet();
                da.Fill(dt);

                con.Close();
                ds.Tables.Add(dt);
                usernamelbl.Text = dt.Rows[0]["uName"].ToString();
                bdaylbl.Text = dt.Rows[0]["cBirthday"].ToString();
                phonelbl.Text = dt.Rows[0]["Phone"].ToString();
                emaillbl.Text = dt.Rows[0]["Email"].ToString();


            }

        }
    }
}