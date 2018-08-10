using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Text;

namespace GroupProject
{
    public partial class comment : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        string uName { get; set; }
        string uID { get; set; }
        string itemName { get; set; }
        string itemComment { get; set; }

        string email { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack && Session["login"] != null)
            {
                try
                {
                    //commentView();
                    email = Session["login"].ToString();

             

                    SqlConnection con = new SqlConnection(connStr);
                    con.Open();

                    string sQry = "select * from dbo.Customer where email='" + email + "'";          
                    SqlCommand cmd = new SqlCommand(sQry, con);

                    SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                    DataTable dt1 = new DataTable();
                    DataSet ds1 = new DataSet();
                    da1.Fill(dt1);
                    //con.Close();
                    ds1.Tables.Add(dt1);

                    uName = dt1.Rows[0]["FirstName"].ToString();
                    uID = dt1.Rows[0]["CusID"].ToString();

                    usernamelbl.Text = uName;

                    string tQry = "select ProductName from dbo.Product where ProductID in(select ProductID from ORDERITEM1 join orders1 on (ORDERITEM1.OrderID=Orders1.OrderID) where Orders1.OrderState='inactive' And Orders1.CusID=" + uID + ")";
                    SqlCommand cme = new SqlCommand(tQry, con);

                    SqlDataAdapter da2 = new SqlDataAdapter(cme);
                    DataTable dt2 = new DataTable();
                    DataSet ds2 = new DataSet();
                    da2.Fill(dt2);
                    con.Close();
                    ds2.Tables.Add(dt2);

                    itemList.DataTextField = ds2.Tables[0].Columns["ProductName"].ToString();
                    itemList.DataValueField = ds2.Tables[0].Columns["ProductName"].ToString();
                    itemList.DataSource = ds2.Tables[0];
                    itemList.DataBind();

                    commentView();
                    nonLoginMsg.Visible = false;
                }
                catch
                {
                    test.Text = "get username failed!";
                }
            }


            else if (!IsPostBack && Session["username"] == null)
            {
                try
                {
                    commentView();
                    usernamelbl.Visible = false;
                    itemList.Visible = false;
                    commenttxt.Visible = false;
                    writeBtn.Visible = false;
                    nonLoginMsg.Visible = true;
                }

                catch
                {
                    test.Text = "nonlogin";
                }            
            }
          }
        

       public void commentView()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sQry = "select FName,PName,PCmt from dbo.Comment";
            SqlCommand cmd = new SqlCommand(sQry, con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(dt);
            con.Close();
            ds.Tables.Add(dt);
            
            DisplayComment.DataSource = ds.Tables[0];
            DisplayComment.DataBind();
  
            //DisplayComment.DataSource = ds.Tables[0];
            //DisplayComment.DataBind();
        }
        protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (DisplayComment.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            //if (hdnText.Value != "")
            //{
            //    string yourValue = hdnText.Value.ToString();
            //    if (yourValue == "Default")
            //    {
            //        commentView("");
            //    }
            //    else
            //    {
            //        this.commentView(yourValue);
            //    }
            //}
            //else
            //{
                this.commentView();
            //}
        }



        protected void Write(object sender, EventArgs e)
        {
            try
            {
                uName = usernamelbl.Text;
                itemName = itemList.SelectedItem.Text;
                itemComment = commenttxt.Text;
  
                Comment writeComment = new Comment(uName, itemName, itemComment);
                ConnectClass.writeComment(writeComment);
                //string msg = "Register Successfully!";
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SomeKey", "alert('Some alert')", true);
                //Response.Write("<script>alert('" + msg + "')</script>");
                //Response.Redirect("login.aspx");

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Thank you very much for your comment! ');");
                
                Response.Write("</script>");


                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string sQry = "select FName,PName,PCmt from dbo.Comment";
                SqlCommand cmd = new SqlCommand(sQry, con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                DataSet ds = new DataSet();
                da.Fill(dt);
                con.Close();
                ds.Tables.Add(dt);
                DisplayComment.DataSource = ds.Tables[0];
                DisplayComment.DataBind();

                commenttxt.Text = "";


            }
            catch
            {
                result1.Text = "writing Failed!";
            }

            
        }


    }
}
    