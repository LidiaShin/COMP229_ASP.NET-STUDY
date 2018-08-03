using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace ClassLabs
{
    public partial class week12Ptest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void check_Click(object sender, EventArgs e)
        {
            string uName = TextBox1.Text;
            string pWord = TextBox2.Text;
            string eMail = TextBox3.Text;
            if (
                uName == "Dodam" &&
                pWord == "12345" &&
                Regex.IsMatch(eMail, "^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$"))
            {
                Label1.Text = "Good!";
            }

            else
            {

                hdn.Value = "" +(Int32.Parse(hdn.Value) + 1);
                int num = Int32.Parse(hdn.Value)+1;

                switch(num)
                {
                    case 1:
                        Label1.Text = "failed 1 time";
                        break;

                    case 2:
                        Label1.Text = "failed 2 times";
                        break;

                    case 3:
                        Label1.Text = "failed 3 times";
                        break;

                    default:
                        Response.Redirect("http://www.naver.com");
                        break;


                }
            }

           
        }
    }
}