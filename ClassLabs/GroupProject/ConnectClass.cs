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
        //private static SqlCommand cmdcheck;

        static ConnectClass()
        {
            cn = new SqlConnection("data source = laptop-l82n2tn1\\sqlexpress; database=groupProject; integrated security=SSPI");
        }

        /* public static void checkInfo(Info info)
         {

             string checkquery = string.Format(@"select * from customer where email = ('{0}')",info.eMailAddress);

             cmdcheck = new SqlCommand(checkquery, cn);


                 cn.Open();
                 SqlDataAdapter da1 = new SqlDataAdapter(cmdcheck);
                 DataTable dt1 = new DataTable();
                 DataSet ds1 = new DataSet();
                 da1.Fill(dt1);
                 //con.Close();
                 ds1.Tables.Add(dt1);

             if (dt1.Rows[0]["email"].ToString() == null)
             {
                 string query = string.Format(@"SET IDENTITY_INSERT Customer ON; Insert into Customer (CusID , FirstName , LastName ,email ,Password) Values (NEXT VALUE FOR Test.CountBy1, '{0}','{1}','{2}','{3}')",
                 info.firstName, info.lastName, info.eMailAddress, info.passWord);
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



             else
             {
                 info.eMailAddress = dt1.Rows[0]["email"].ToString();
             }
         }

     */


        public static void checkInfo(Info info)
        {
            string query = string.Format(@"select * from customer where email = ('{0}')", info.eMailAddress);
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

                if(dt.Rows.Count>0)
                { info.eMailAddress = "already exist"; }
                
            }

            finally
            {
                cn.Close();
            }
        }

        public static void registerInfo(Info info)
        {
            string query = string.Format(@"SET IDENTITY_INSERT Customer ON; Insert into Customer (CusID , FirstName , LastName ,email ,Password) Values (NEXT VALUE FOR Test.CountBy1, '{0}','{1}','{2}','{3}')",
            info.firstName, info.lastName, info.eMailAddress, info.passWord);

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


       

        public static void getAverage(Average average)
        {
            string query = string.Format(@"select avg(cast(grade as float))as avg_grade from Comment where PName=('{0}');", average.productName);

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

            string query = string.Format(@"Insert into Comment(FName, PName,PCmt,ICmt,grade) Values ('{0}','{1}','{2}',NEXT VALUE FOR groupProject.SQcommentID,'{3}');", comment.userName, comment.itemName, comment.itemComment,comment.itemGrade);

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