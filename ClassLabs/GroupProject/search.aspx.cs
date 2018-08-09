using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string minAgeSelected = ddlAge.SelectedItem.Value;
            string genderSelected = ddlGender.SelectedItem.Value;

            string myConnectionString = "data source = laptop-l82n2tn1\\sqlexpress; database=groupProject; integrated security=SSPI";

            using (SqlConnection cn = new SqlConnection(myConnectionString))
            {
                string query = "";

                if (genderSelected == "Boy")
                {
                    query = "Select ProductID, ProductName, Retail, PicUrl from Product where MinAge >='" + minAgeSelected + "' and ForGender !='Girls'";
                }
                else
                {
                    query = "Select ProductID, ProductName, Retail, PicUrl from Product where MinAge >='" + minAgeSelected + "' and ForGender !='Boys'";
                }

                SqlCommand cmd = new SqlCommand(query, cn);
                cn.Open();

                //GridView1.DataSource = cmd.ExecuteReader();
                //GridView1.DataBind();
                SqlDataReader reader = cmd.ExecuteReader();
                PlaceHolder1.Controls.Clear();
                display(reader);
            }
        }

        protected void display(SqlDataReader reader)
        {
            IDataRecord record;
            Label TABLE = new Label();
            TABLE.Text = " <table cellpadding='0'cellspacing='0'>";
            PlaceHolder1.Controls.Add(TABLE);
            while (reader.Read())
            {
                record = (IDataRecord)reader;
                PlaceHolder PH1 = new PlaceHolder();
                Image prodcutImage1 = new Image();
                prodcutImage1.ImageUrl = record["PicUrl"].ToString();
                prodcutImage1.Height = 200;
                prodcutImage1.Width = 200;
                Label forName = new Label();
                forName.Text = "Product name:  ";
                Label Name = new Label();
                Name.Text = record["ProductName"].ToString();
                Label ForPrice = new Label();
                ForPrice.Text = "Price:  ";
                Label Price = new Label();
                Price.Text = record["Retail"].ToString();
                //Button myButton = new Button();
                //myButton.Text = "Add";
                //myButton.ID = record["ProductID"].ToString();
                //myButton.Click += new EventHandler(Add_Click);
                Label row = new Label();
                row.Text = "<td>";
                Label rowEnd = new Label();
                rowEnd.Text = "</td>";
                Label newline = new Label();
                newline.Text = "<br/>";
                Label newline2 = new Label();
                newline2.Text = "<br/>";
                Label newline3 = new Label();
                newline3.Text = "<br/>";
                Label newline4 = new Label();
                newline4.Text = "<br/>";
                PlaceHolder1.Controls.Add(row);
                PlaceHolder1.Controls.Add(PH1);
                PH1.Controls.Add(prodcutImage1);
                PH1.Controls.Add(newline2);
                PH1.Controls.Add(forName);
                PH1.Controls.Add(Name);
                PH1.Controls.Add(newline3);
                PH1.Controls.Add(ForPrice);
                PH1.Controls.Add(Price);
                PH1.Controls.Add(newline4);
                PlaceHolder1.Controls.Add(rowEnd);
                //PH1.Controls.Add(myButton);
                //PH1.Controls.Add(newline);       

            }

            Label TabelEnd = new Label();
            TabelEnd.Text = "</ tr > </table> ";
            PlaceHolder1.Controls.Add(TabelEnd);
        }
    }
}