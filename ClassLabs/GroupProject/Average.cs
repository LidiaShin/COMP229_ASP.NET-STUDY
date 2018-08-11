using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class Average
    {
        public string productName { get; set; }
        public float productAVG { get; set; }

        public Average (string pname,float pAVG)
        {
            productName = pname;
            productAVG = pAVG;
        }

    }
}