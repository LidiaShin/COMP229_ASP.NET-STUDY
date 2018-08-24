using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace finaltermReview
{
    public class DisplayImages
    {
        public string imageName { get; set; }
        public string imageURL { get; set; }
        public DisplayImages(string iName, string iURL)
        {
            imageName = iName;
            imageURL = iURL;
            

        }
    }
}