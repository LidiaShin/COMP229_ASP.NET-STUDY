using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finaltermReview
{
    public partial class finalMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            // 처음접속시
            if (Session["login"] == null && !IsPostBack)
               // 로그인 값 없고 처음접속시
                {
                signupmenu.Visible = true;
                //myPage.Visible = true;
                login.Visible = true;
                logout.Visible = false;
               
            }
            else 
            // 페이지 재접속시
            {
                signupmenu.Visible = false;
                login.Visible = false;
                //myPage.Visible = false;
                logout.Visible = true;
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("http://www.naver.com");
        }
    }
}