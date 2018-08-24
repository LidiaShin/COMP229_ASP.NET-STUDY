using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finaltermReview
{
    public partial class image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void displayImage_Click(object sender, EventArgs e)
        {

            Response.Redirect("http://www.naver.com");
        }
    }
}