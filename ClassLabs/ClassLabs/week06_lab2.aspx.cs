﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassLabs
{
    public partial class week6_placeholder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
                Button myButton = new Button();
                myButton.Text = "My New Button???";
                myPlaceHolder.Controls.Add(myButton);
           
        }
    }
}