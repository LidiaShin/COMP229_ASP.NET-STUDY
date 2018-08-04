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
    public partial class catalog : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListViewControlBind("");
            }
        }


        protected void ListViewControlBind(string sGroup)
        {
            if (sGroup == "toy")
                sGroup = "1";
            else if (sGroup == "stroller")
                sGroup = "2";
            else if (sGroup == "cloth")
                sGroup = "3";
            else if (sGroup == "food")
                sGroup = "4";
            else
                sGroup = "";

            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sQry = "select ProductName,CategoryID,Retail from dbo.Products";
            SqlCommand cmd = new SqlCommand(sQry, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(dt);
            con.Close();
            ds.Tables.Add(dt);



            if (sGroup != "")
            {
                var dv = ds.Tables[0].DefaultView;
                dv.RowFilter = "CategoryID='" + sGroup + "'";
                DataSet ds1 = new DataSet();
                var newdt = dv.ToTable();
                ds1.Tables.Add(newdt);
                //bind data to data controls  
                ListView1.DataSource = ds1.Tables[0];
                ListView1.DataBind();
            }
          

            else
            {
                ListView1.DataSource = ds.Tables[0];
                ListView1.DataBind();
            }

        }

        //paging code  
        protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (ListView1.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            if (hdnText.Value != "")
            {
                string yourValue = hdnText.Value.ToString();
                if (yourValue == "Default")
                {

                    ListViewControlBind("");
                }
                else
                {
                    this.ListViewControlBind(yourValue);
                }
            }
            else
            {
                this.ListViewControlBind("");
            }
        }
        protected void ENameLinkBtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string yourValue = btn.CommandArgument;
            // do what you need here  
            if (yourValue == "Default")
            {
                hdnText.Value = yourValue;
                ListViewControlBind("");
            }
            else
            {
                hdnText.Value = yourValue;
                ListViewControlBind(yourValue);
            }
        }



    }
}