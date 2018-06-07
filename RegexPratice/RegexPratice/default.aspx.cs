using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace RegexPratice
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Text = "Checking Email Button 1";
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {


            string input = TextBox1.Text;



            if (Regex.IsMatch(input, "^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$"))
            {
                Label1.Text = "correct";
            }

            else
            {
                Label1.Text = "incorrect";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}