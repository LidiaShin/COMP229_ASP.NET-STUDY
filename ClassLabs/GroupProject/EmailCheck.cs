using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class EmailCheck
    {
        public string usereMailAddress { get; set; }

        public EmailCheck(string email){

            usereMailAddress = email;

        }
    }
}