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
        string itemName { get; set; }
        string itemComment { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack && Session["username"] != null)
            {
                try
                {
                    commentView();

                    usernamelbl.Text = Session["UserName"].ToString();



                    
                    SqlConnection con = new SqlConnection(connStr);
                    con.Open();

                    SqlCommand com = new SqlCommand("select * from employee", con); // table name 
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);  // fill dataset
                    itemList.DataTextField = ds.Tables[0].Columns["FirstName"].ToString(); // text field name of table dispalyed in dropdown
                    itemList.DataValueField = ds.Tables[0].Columns["id"].ToString();             // to retrive specific  textfield name 
                    itemList.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                    itemList.DataBind();  //binding dropdownlist






                    usernametxt.Visible = false;
                    
                }
                catch
                {
                    result2.Text = "Failed!";
                }
            }


            else if (!IsPostBack && Session["username"] == null)
            {
                try
                {
                    commentView();

                    usernamelbl.Visible = false;
                    usernametxt.Visible = true;
                    
                }

                catch
                {
                    result2.Text = "Failed!";
                }            
            }
          }
        

       public void commentView()
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string sQry = "select * from dbo.Comment";
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
                
                itemComment = commenttxt.Text;

                if (Session["username"] != null)
                {
                    uName = usernamelbl.Text;
                    itemName = itemList.SelectedItem.Text;
                }
                else
                {
                    uName = usernametxt.Text;
                    itemName = itemList.SelectedItem.Text;
                }


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
                string sQry = "select * from dbo.Comment";
                SqlCommand cmd = new SqlCommand(sQry, con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                DataSet ds = new DataSet();
                da.Fill(dt);
                con.Close();
                ds.Tables.Add(dt);
                DisplayComment.DataSource = ds.Tables[0];
                DisplayComment.DataBind();


            }
            catch
            {
                result1.Text = "Register Failed!";
            }
        }


    }
}
    