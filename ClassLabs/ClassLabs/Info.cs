using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClassLabs
{
    public class Info
    {
       
        public string UName { get; set; }
        public string PWord { get; set; }
        

        public Info(string uName, string pWord)
        {
            UName = uName;
            PWord = pWord;          
        }

    }
}