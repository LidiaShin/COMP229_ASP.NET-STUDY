using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class Info
    {
      
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string eMailAddress { get; set; }
        public string passWord { get; set; }

        public Info(string fname, string lname,string email,string pword)
        {
            firstName = fname;
            lastName = lname;
            eMailAddress = email;
            passWord = pword;
           
        }
    }
}