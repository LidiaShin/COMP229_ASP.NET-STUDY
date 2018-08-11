using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject
{
    public class Comment
    {
        public string userName { get; set; }
        public string itemName { get; set; }
        public string itemComment { get; set; }

        public int itemGrade { get; set; }
       
        public Comment (string uName, string iName, string iComment,int igrade)
        {
            userName = uName;
            itemName = iName;
            itemComment = iComment;
            itemGrade = igrade;
        }
    }
}
