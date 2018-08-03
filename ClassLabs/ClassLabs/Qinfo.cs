using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClassLabs
{
    public class Qinfo
    {
        public string uName { get; set; }
        public string pWord { get; set; }

        public Qinfo(string uname,string pword)
        {
            uName = uname;
            pWord = pword;


        }

    }
}