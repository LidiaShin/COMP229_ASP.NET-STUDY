using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ClassLabs
{
    public class ConnectionClass
    {
        private static SqlConnection cn;
        private static SqlCommand cmd;

        static ConnectionClass()
        {
            cn = new SqlConnection(@"Data Source=LAPTOP-L82N2TN1\SQLEXPRESS;Initial Catalog=DSMyDB; Integrated Security=True");
        }
        public static void CheckInfo(Info info)
        {
            string query = string.Format(@"Insert into DSMyDB Values ('{0}', '{1}')",
              info.UName, info.PWord);
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