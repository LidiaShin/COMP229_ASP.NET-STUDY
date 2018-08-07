using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class Details
    {
        public string Description{ get; set; }
        public int ProductID { get; set; }

        public string pictureURL { get; set; }

        public Details(int pID,string desc,string picURL)
        {
            Description = desc;
            ProductID = pID;
            pictureURL = picURL;
        }


    }
}