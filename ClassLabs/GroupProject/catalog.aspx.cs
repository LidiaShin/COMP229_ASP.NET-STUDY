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
        static string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        SqlConnection cn = new SqlConnection(connStr);
        string query;
        
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
            string sQry = "select * from dbo.Products";
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
 
        protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (ListView1.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            if (hdnText.Value != "")
            {
                string yourValue = hdnText.Value.ToString();
                if (yourValue == "a")
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

        string userID;
        int pID { get; set; }

        string desc { get; set; }

        string picURL { get; set; }


        protected void AddToCart(object sender, EventArgs e)
        {
            /*
             try
             {

                 qty = 100;

                 LinkButton btn = (LinkButton)(sender);
                 pID = Convert.ToInt32(btn.CommandArgument);
                 // test CommandArgument 


                 Cart addToCart = new Cart(qty,pID);
                 ConnectClass.addToCart(addToCart);
                 //string msg = "Register Successfully!";
                 //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SomeKey", "alert('Some alert')", true);
                 //Response.Write("<script>alert('" + msg + "')</script>");
                 //Response.Redirect("login.aspx");

                 Response.Write("<script type='text/javascript'>");
                 Response.Write("alert('Successfully added! ');");

                 Response.Write("</script>");

             }
             catch
             {
                 result.Text = "Failed!";
             }

     */

            LinkButton btn = (LinkButton)sender;
            bool f = false;
            string orderID = "";
            string price = "";
            //check active or inactive for user's orders 
            //inactive order: order has been paid
            //active order: order did not been paid
            if (Session["login"] == null)
            {
                Response.Write("<script language=javascript>alert('Please login first!!')</script>");
                Response.Write("<script language=javascript>window.location.href='login.aspx'; </script>");
            }
            else
            {
                try
                {
                    userID = Session["login"].ToString();
                    query = string.Format("Select * from Orders where CusID ={0}", userID);

                    SqlCommand cmd = new SqlCommand(query, cn);
                    cn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    IDataRecord record;
                    while (reader.Read())
                    {
                        record = (IDataRecord)reader;
                        if (record["OrderState"].ToString() == "active")
                        {
                            f = true;
                            orderID = record["OrderID"].ToString();
                        }
                    }
                }
                catch
                {
                }
                finally
                {
                    cn.Close();
                }
                // if customer don't have active order
                if (f == false)
                {

                    try
                    {
                        query = string.Format("INSERT INTO Orders ( CusID,OrderState) VALUES ( {0},'active');", userID);
                        SqlCommand cmd = new SqlCommand(query, cn);
                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch
                    {
                    }
                    finally
                    {
                        cn.Close();
                    }

                }
                // find the order id we just created
                try
                {
                    query = string.Format("Select * from orders where CusID ={0}", userID);
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    IDataRecord record;
                    while (reader.Read())
                    {
                        record = (IDataRecord)reader;
                        if (record["OrderState"].ToString() == "active")
                        {
                            f = true;
                            orderID = record["OrderID"].ToString();
                        }
                    }
                }
                catch
                {
                }
                finally
                {
                    cn.Close();
                }


                // find the price of product 
                try
                {
                    query = string.Format("Select Retail from product where ProductID ={0}", btn.CommandArgument);
                    SqlCommand comd1 = new SqlCommand(query, cn);
                    cn.Open();
                    SqlDataReader reader1 = comd1.ExecuteReader();
                    while (reader1.Read())
                    {
                        IDataRecord record = (IDataRecord)reader1;
                        price = record["Retail"].ToString();
                    }
                }
                catch
                {
                }
                finally
                {
                    cn.Close();
                }

                // insert data to orderItem
                try
                {
                    query = string.Format("INSERT INTO OrderItem (OrderID,ProductID,Quantity ,PaidEach) VALUES ({0},{1},1,{2});", orderID, btn.CommandArgument, price);
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('add item to cart success!!');</script>");

                }
                catch
                {
                }
                finally
                {
                    cn.Close();
                }
            }




        }





        protected void SeeDetail(object sender, EventArgs e)
        {

            try
            {
                Button btn = (Button)(sender);
                pID = Convert.ToInt32(btn.CommandArgument);
                // test CommandArgument 

                Details SeeDetails = new Details(pID, desc, picURL);
                ConnectClass.seeDetails(SeeDetails);
                detailView.Text = SeeDetails.Description;
                productPic.ImageUrl = SeeDetails.pictureURL;


            }
            catch
            {
                detailView.Text = "Failed!";
            }
        }



    }
}