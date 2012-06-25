using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class index : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
             
               // Response.Status = "301 Moved Permanently";
               // Response.AddHeader("Location", "http://www.fasthostels.com");

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
           // if (Request.IsSecureConnection)
           // {
          //      Response.Redirect(Request.Url.AbsoluteUri.Replace("https://", "http://"));
        //            }

        }
    }
}