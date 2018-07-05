using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace midtermReview
{
    public partial class Chap02_a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //처음 로드시 
            if (!IsPostBack) 
            { //ViewState사용 
                ViewState["LOAD_TIME"] = DateTime.Now; }
            }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            if (ViewState["LOAD_TIME"] != null)
            {
                lblDisplay.Text = "로드시간 : "
                + Convert.ToDateTime(ViewState["LOAD_TIME"]).ToLongTimeString();
            }

        }
    }
}