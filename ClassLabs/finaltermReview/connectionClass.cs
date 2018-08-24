using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;



namespace finaltermReview
{

    public class connectionClass
    {
        private static SqlConnection cntString;
        private static SqlCommand cmdString;

        static connectionClass()
        {
            cntString = new SqlConnection(ConfigurationManager.ConnectionStrings["finalReview"].ConnectionString);
        }
        public static void SignIn(SignUpInfo info)
        {
            string SQuery = string.Format(@"select email,password,username from customer where email = ('{0}') and password=('{1}') ", info.eMailAddress, info.passWord);

            cmdString = new SqlCommand(SQuery, cntString);

            try
            {
                cntString.Open();
                // cmdString.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(cmdString);

                DataTable dt = new DataTable();

                DataSet ds = new DataSet();

                da.Fill(dt);

                ds.Tables.Add(dt);

                if (dt.Rows.Count > 0)
                {
                    info.eMailAddress = "email matching";
                    info.userName = dt.Rows[0]["userName"].ToString();
                }

                else
                {
                    info.eMailAddress = "email not matching";
                }
            }

            finally
            {
                cntString.Close();
            }

        }
        public static void SignUp(SignUpInfo info)
        {
            string cQuery = string.Format(@"insert into customer (customerID,userName,email,password)
values(NEXT VALUE FOR finalreview.sqCustomerID, '{0}', '{1}', '{2}')", info.userName, info.eMailAddress, info.passWord);

            cmdString = new SqlCommand(cQuery, cntString);

            try
            {
                cntString.Open();
                cmdString.ExecuteNonQuery();
            }

            finally
            {
                cntString.Close();
            }
        }


        public static void AvoidDuplicateEmail(SignUpInfo info)
        {
            string dQuery = string.Format(@"select * from customer where email = ('{0}')", info.eMailAddress);
            cmdString = new SqlCommand(dQuery, cntString);

            try
            {
                cntString.Open();
                //cmdString.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(cmdString);

                DataTable dt = new DataTable();
     
                DataSet ds = new DataSet();
                da.Fill(dt);
                ds.Tables.Add(dt);

                if (dt.Rows.Count > 0)
                { info.eMailAddress = "Existing Email";}
            }

            finally
            {
                cntString.Close();
            }
        }




        


            public static void DisplayImageOn(DisplayImages imageinfo)
            {
            string IQuery = string.Format(@"select * from imageTable");
            cmdString = new SqlCommand(IQuery, cntString);

            try
            {
                cntString.Open();
                cmdString.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(cmdString);

                DataTable dt = new DataTable();
                DataSet ds = new DataSet();
                da.Fill(dt);
                ds.Tables.Add(dt);

                imageinfo.imageURL= dt.Rows[0]["imageURL"].ToString();

            }

            finally
            {
                cntString.Close();

            }


        }



    }
}