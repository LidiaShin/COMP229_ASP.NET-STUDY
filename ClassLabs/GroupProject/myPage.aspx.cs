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

        /* string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
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




         }*/
        static string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        //SqlConnection cn = new SqlConnection(connStr);

        string email;
        string userID = "";

        SqlConnection cn = new SqlConnection(connStr);
        protected string query;
      
        string orderID = "";

        protected void Page_Load(object sender, EventArgs e)
        {

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

                //test1.Text = userID;
            }
            else
            {
                Response.Write("<script language=javascript>alert('Please login first!!')</script>");
                Response.Write("<script language=javascript>window.location.href='login.aspx'; </script>");
            }
        
            try
            {
                query = string.Format("Select * from Customer where CusID ={0}", userID);
                SqlCommand cmd = new SqlCommand(query, cn);
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                displayUser(reader);

            }
            catch
            {
            }
            finally
            {
                cn.Close();
            }


            //check active or inactive for user's orders 
            //inactive order: order has been paid
            //active order: order did not been paid
            cartEmpty.Text = "your cart is empty";






            try
            {
                query = string.Format("Select * from Orders1 where CusID ={0}", userID);
                SqlCommand cmd = new SqlCommand(query, cn);
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                IDataRecord record;
                while (reader.Read())
                {
                    record = (IDataRecord)reader;

                    if (record["OrderState"].ToString() == "active")
                    {
                        this.orderID = record["OrderID"].ToString();
                        cartEmpty.Text = "";
                        Pay.Visible = true;
                        ShoppingBTon.Visible = false;
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
           
            // use OrderID find the orderItem

                try
                {
                    query = string.Format("SELECT OrderItem1.OrderItem1ID,Product.ProductName, Product.Retail, OrderItem1.Quantity FROM OrderItem1 JOIN Product ON(OrderItem1.ProductID = Product.ProductID) where OrderID = {0}; ", orderID);
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    display(reader);
                 
                }
                catch
                {
                }
                finally
                {
                    cn.Close();
                }
            
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            try
            {
                query = string.Format("DELETE FROM OrderItem1 WHERE OrderItem1ID={0};", btn.ID);
                SqlCommand cmd = new SqlCommand(query, cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language=javascript>alert('Delete success!!')</script>");
                Response.Write("<script language=javascript>window.location.href=document.URL; </script>");
            }
            catch
            {
            }
            finally
            {
                cn.Close();

            }


        }


        protected void displayKids(SqlDataReader reader)
        {
            IDataRecord record;
            int i = 1;
            while (reader.Read())
            {
                record = (IDataRecord)reader;
                PlaceHolder PH1 = new PlaceHolder();
                Label no = new Label();
                no.Text = string.Format("Kid No.{0} ", i); ;
                Label forGender = new Label();
                forGender.Text = "Gender:  ";
                Label Gender = new Label();
                Gender.Text = record["Gender"].ToString();
                Label ForDateOfBirth = new Label();
                ForDateOfBirth.Text = "Date Of Birth:  ";
                Label DateOfBirth = new Label();
                DateOfBirth.Text = record["DateOfBirth"].ToString();
                Label newline = new Label();
                newline.Text = "<br/>";
                Label newline2 = new Label();
                newline2.Text = "<br/>";
                Label newline3 = new Label();
                newline3.Text = "<br/>";
                Label newline4 = new Label();
                newline4.Text = "<br/>";
                Label newline5 = new Label();
                newline5.Text = "<br/>";
                //PlaceHolder3.Controls.Add(PH1);
                PH1.Controls.Add(no);
                PH1.Controls.Add(newline2);
                PH1.Controls.Add(forGender);
                PH1.Controls.Add(Gender);
                PH1.Controls.Add(newline3);
                PH1.Controls.Add(ForDateOfBirth);
                PH1.Controls.Add(DateOfBirth);
                PH1.Controls.Add(newline);
                i++;
            }
        }


        protected void displayUser(SqlDataReader reader)
        {
            IDataRecord record;
            while (reader.Read())
            {

                record = (IDataRecord)reader;
                PlaceHolder PH1 = new PlaceHolder();
                Label forFirstName = new Label();
                forFirstName.Text = "FirstName:  ";
                Label FirstName = new Label();
                FirstName.Text = record["FirstName"].ToString();
                Label ForLastName = new Label();
                ForLastName.Text = "LastName    :  ";
                Label LastName = new Label();
                LastName.Text = record["LastName"].ToString();
                Label ForEmail = new Label();
                ForEmail.Text = "email:  ";
                Label email = new Label();
                email.Text = record["email"].ToString();
                Label newline = new Label();
                newline.Text = "<br/>";
                Label newline2 = new Label();
                newline2.Text = "<br/>";
                Label newline3 = new Label();
                newline3.Text = "<br/>";
                Label newline4 = new Label();
                newline4.Text = "<br/>";
                Label newline5 = new Label();
                newline5.Text = "<br/>";
                PlaceHolder2.Controls.Add(PH1);
                PH1.Controls.Add(forFirstName);
                PH1.Controls.Add(FirstName);
                PH1.Controls.Add(newline3);
                PH1.Controls.Add(ForLastName);
                PH1.Controls.Add(LastName);
                PH1.Controls.Add(newline5);
                PH1.Controls.Add(ForEmail);
                PH1.Controls.Add(email);
                PH1.Controls.Add(newline4);
            }
        }


        protected void display(SqlDataReader reader)
        {
            IDataRecord record;
            int i = 1;
            int p = 0;
            while (reader.Read())
            {

                record = (IDataRecord)reader;
                PlaceHolder PH1 = new PlaceHolder();


                Label no = new Label();
                no.Text = string.Format("{0}. ", i); ;
                Label forName = new Label();
                forName.Text = "Product name:  ";
                Label Nmae = new Label();
                Nmae.Text = record["ProductName"].ToString();
                Label ForQuantity = new Label();
                ForQuantity.Text = "Quantity:  ";
                Label Quantity = new Label();
                Quantity.Text = record["Quantity"].ToString();
                Label ForPrice = new Label();
                ForPrice.Text = "Price:  ";
                Label Price = new Label();
                Price.Text = record["Retail"].ToString();




                Button myButton = new Button();
                myButton.Text = "Delete";
                myButton.ID = record["OrderItem1ID"].ToString();
                myButton.Click += new EventHandler(Delete_Click);
                myButton.CssClass = "deleteBtn";
                Label newline = new Label();
                newline.Text = "<br/>";
                Label newline2 = new Label();
                newline2.Text = "&nbsp";
                Label newline3 = new Label();
                newline3.Text = "&nbsp";
                Label newline4 = new Label();
                newline4.Text = "&nbsp";
                Label newline5 = new Label();
                newline5.Text = "&nbsp";
                PlaceHolder1.Controls.Add(PH1);
                PH1.Controls.Add(no);
                PH1.Controls.Add(newline2);
                PH1.Controls.Add(forName);
                PH1.Controls.Add(Nmae);
                PH1.Controls.Add(newline3);
                PH1.Controls.Add(ForQuantity);
                PH1.Controls.Add(Quantity);
                PH1.Controls.Add(newline5);
                PH1.Controls.Add(ForPrice);
                PH1.Controls.Add(Price);
                PH1.Controls.Add(newline4);
                PH1.Controls.Add(myButton);
                PH1.Controls.Add(newline);
                i++;
                p = +Convert.ToInt32(record["Retail"]);

            }
            SubTotal.Text = p.ToString();
            Tax.Text = (p * 0.13).ToString();
            Total.Text = (p * 1.13).ToString();
        }

        protected void Pay_Click1(object sender, EventArgs e)
        {
            if (orderID != "")
            {
                try
                {
                    query = string.Format("UPDATE Orders1 SET OrderState = 'inactive' WHERE OrderID = {0} ", orderID);
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script language=javascript>alert('pay success!!')</script>");
                    Response.Write("<script language=javascript>window.location.href=document.URL; </script>");

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

        protected void ShoppingBTon_Click(object sender, EventArgs e)
        {
            Server.Transfer("catalog.aspx");
        }
    }
}