using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace midtermReview
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // myDateLabel.Text = DateTime.Now.ToLongDateString();

            DateTime Now = DateTime.UtcNow;
            myDateLabel.Text = Now.ToString();
            myTimeLabel.Text = DateTime.Now.ToLongTimeString();
;
        }
    }
}