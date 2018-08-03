using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace midtermReview
{
    public partial class Chap03_S32 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Check5(object sender,EventArgs e)
        {
         if(TextBox3.Text =="Dodam" && TextBox4.Text == "12345")
            {
                Response.Redirect("http://www.naver.com");
            }
         else
            {
                Label4.Text = "Wrong Input";
            }
        }

        protected void Check6(object sender,EventArgs e)
        {
            string result;
            string num;
            num = TextBox5.Text;

            switch (TextBox5.Text)
            {

                case "1":
                    result = "Monday";
                    break;
                case "2":
                    result = "Tuesday";
                    break;
                case "3":
                    result = "Wednesday";
                    break;
                case "4":
                    result = "Thursday";
                    break;
                case "5":
                    result = "Friday";
                    break;
                case "6":
                    result = "Saturday";
                    break;
                case "7":
                    result = "Sunday";
                    break;
                default:
                    result = "Invalid Input!";
                    break;
            }
            Label5.Text = result;
        }
    }
}