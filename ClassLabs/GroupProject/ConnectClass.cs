using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

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

    }
}