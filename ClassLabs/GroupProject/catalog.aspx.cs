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
        SqlConnection con = new SqlConnection(connStr);
        //SqlConnection cn = new SqlConnection(connStr);

        string email;
        string userID;
        string NuserID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                email = Session["login"].ToString();
            }

            if (!IsPostBack)
            {
                ListViewControlBind("");

                 if (Session["login"] != null)
                 {
                     //Retrieving UserName from Session
                     email = Session["login"].ToString();

                     //SqlConnection con = new SqlConnection(connStr);
                     con.Open();
                     string sQry = "Select * from Customer where email='" + email + "'";

                     SqlCommand cmd = new SqlCommand(sQry, con);

                     SqlDataAdapter da = new SqlDataAdapter(cmd);
                     DataTable dt = new DataTable();
                     DataSet ds = new DataSet();
                     da.Fill(dt);

                     con.Close();
                     ds.Tables.Add(dt);
                     userID = dt.Rows[0]["CusID"].ToString();

                    test1.Text = userID;
                    NuserID = test1.Text;
                 }
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
            else if (sGroup == "toys")
                sGroup = "4";
            else
                sGroup = "";

            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sQry = "select * from dbo.Product";
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

        
        int pID { get; set; }

        string desc { get; set; }

        string picURL { get; set; }


        protected void AddToCart(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string orderID = "";
            string price = "";
            string uuser="";
            int pID = Convert.ToInt32(btn.CommandArgument);
            bool f = false;

            con.Open();
            string sQry = "Select * from Customer where email='" + email + "'";

            /* SqlCommand cmd = new SqlCommand(sQry, con);

             SqlDataAdapter da = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();
             DataSet ds = new DataSet();
             da.Fill(dt);

             con.Close();
             ds.Tables.Add(dt);
             userID = dt.Rows[0]["CusID"].ToString();
             */

            SqlCommand cmd3 = new SqlCommand(sQry, con);
            SqlDataReader reader11 = cmd3.ExecuteReader();
            IDataRecord record1;
            while (reader11.Read())
            {
                record1 = (IDataRecord)reader11;
                uuser = record1["CusID"].ToString();
            }
            con.Close();

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
                    con.Open();
                    string query = string.Format("Select * from Orders1 where CusID = {0}", uuser);
                    SqlCommand cmd1 = new SqlCommand(query, con);
                    SqlDataReader reader = cmd1.ExecuteReader();
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
                catch(Exception ea)
                {
                    Response.Write(ea.Message);
                Response.Write("<script language=javascript>alert('error1111! ')</script>");
            }
                finally
                {
                    con.Close();
                }
                
                // if customer don't have active order
                if (f == false)
                {

                    try
                    {
                        string qry = string.Format("INSERT INTO Orders1 (OrderID,CusID,OrderState) VALUES (NEXT VALUE FOR groupProject.SQorderID,{0},'active');", uuser);
                        SqlCommand cmd = new SqlCommand(qry, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch
                    {
                        Response.Write("<script language=javascript>alert('error123 ! ')</script>");
                    }
                    finally
                    {
                        con.Close();
                    }

                }


                //find orderID

                try
                {
                    con.Open();
                    string query = string.Format("Select * from Orders1 where CusID = {0}", uuser);
                    SqlCommand cmd1 = new SqlCommand(query, con);
                    SqlDataReader reader = cmd1.ExecuteReader();
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
                    Response.Write("<script language=javascript>alert('error2 ! ')</script>");
                }
                finally
                {
                    con.Close();
                }



                // find the price of product 

                try
                {
                    string query = string.Format("Select Retail from product where ProductID = {0}",pID);
                    SqlCommand comd1 = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader reader1 = comd1.ExecuteReader();
                    while (reader1.Read())
                    {
                        IDataRecord record = (IDataRecord)reader1;
                        price = record["Retail"].ToString();
                    }
                }
                catch
                {
                    Response.Write("<script language=javascript>alert('error2 ! ')</script>");
                }
                finally
                {
                    con.Close();
                }
               
            // insert data to orderItem

            try
                {
                    //string query = string.Format("Select Retail from product where ProductID = {0}", pID);
                    string query = string.Format("INSERT INTO ORDERITEM1 (OrderItem1ID,OrderID,ProductID,Quantity ,PaidEach) VALUES (NEXT VALUE FOR groupProject.SQorderItemID,{0},{1},1,{2});  ", orderID,pID,price);
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('add item to cart success!!');</script>");

                }
                catch
                {
                    Response.Write("<script language=javascript>alert('error3 ! ')</script>");
                }
                finally
                {
                    con.Close();
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


        string pName { get; set; }

        protected void SeeAVG(object sender, EventArgs e)
        {

            try
            {
                Label AVG = (Label)(sender);
                pName = AVG.Text;
               


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