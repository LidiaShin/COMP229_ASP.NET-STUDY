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
            string query = string.Format(@"Insert into cusList Values ('{0}', '{1}','{2}','{3}','{4}')",
            info.uName, info.pWord,info.cBirthday,info.Phone,info.Email);

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
            string query = string.Format(@"UPDATE OrderItem SET Qty = ('{0}') where productID = ('{1}');", cart.Quantity, cart.ProductID);

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
            string query = string.Format(@"select Description,PicURL from Products where productID = ('{0}');", detail.ProductID);

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
                detail.pictureURL = dt.Rows[0]["PicURL"].ToString();
            }
            finally
            {
                cn.Close();
            }

        }






    }
}