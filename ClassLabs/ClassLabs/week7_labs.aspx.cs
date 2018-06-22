using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassLabs
{
    public partial class week7_labs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            myLabel.Text = "";
            foreach (DateTime d in Calendar1.SelectedDates)
            {
                myLabel.Text += Calendar1.SelectedDate.ToShortDateString() + "<hr>";
            }

        }
    }
}