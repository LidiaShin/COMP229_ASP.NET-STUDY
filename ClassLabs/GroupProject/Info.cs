using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class Info
    {
        public string uName { get; set; }
        public string pWord { get; set; }
        public string cBirthday { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }

        public Info(string uname, string pword, string cbirthday,string phone,string email)
        {
            uName = uname;
            pWord = pword;
            cBirthday = cbirthday;
            Phone = phone;
            Email = email;
        }
    }
}