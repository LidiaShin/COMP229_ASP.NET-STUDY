using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Configuration;


namespace ClassLabs
{
    public class Qconnect
    {
        private static SqlConnection cn;
        private static SqlCommand cmd;

        static Qconnect()
        {
            cn = new SqlConnection("data source = laptop-l82n2tn1\\sqlexpress; database=DSMyDB; integrated security=SSPI");
        }

        public static void checkInfo(Qinfo qinfo)
        {
            string query = string.Format(@"Insert into DSMyDB Values ('{0}', '{1}')",
            qinfo.uName,qinfo.pWord);

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