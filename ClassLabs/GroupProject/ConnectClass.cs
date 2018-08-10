using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace GroupProject
{
    public class ConnectClass
    {
        private static SqlConnection cn;
        private static SqlCommand cmd;

        static ConnectClass()
        {
            cn = new SqlConnection("data source = laptop-l82n2tn1\\sqlexpress; database=groupProject; integrated security=SSPI");
        }

        public static void checkInfo(Info info)
        {
            string query = string.Format(@"SET IDENTITY_INSERT Customer ON; Insert into Customer (CusID , FirstName , LastName ,email ,Password) Values (NEXT VALUE FOR Test.CountBy1, '{0}','{1}','{2}','{3}')",
            info.firstName, info.lastName,info.eMailAddress,info.passWord);

            cmd = new SqlCommand(query, cn);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
            }

            finally
            {
                cn.Close();
            }

        }



        public static void addToCart(Cart cart)
        {
            string query = string.Format(@"UPDATE OrderItem SET PaidEach = ('{0}') where productID = ('{1}');", cart.Quantity, cart.ProductID);

            cmd = new SqlCommand(query, cn);


            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            finally
            {
                cn.Close();
            }

        }


        public static void seeDetails(Details detail)
        {
            string query = string.Format(@"select * from Product where productID = ('{0}');", detail.ProductID);

            cmd = new SqlCommand(query, cn);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                DataSet ds = new DataSet();
                da.Fill(dt);
                ds.Tables.Add(dt);
                detail.Description = dt.Rows[0]["Description"].ToString();
                detail.pictureURL = dt.Rows[0]["PicUrl"].ToString();
            }
            finally
            {
                cn.Close();
            }
        }

        public static void writeComment(Comment comment)
        {

            string query = string.Format(@"Insert into Comment(FName, PName,PCmt,ICmt) Values ('{0}','{1}','{2}',NEXT VALUE FOR groupProject.SQcommentID);", comment.userName, comment.itemName, comment.itemComment);

            cmd = new SqlCommand(query, cn);
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            finally
            {
                cn.Close();
            }

        }






    }
}