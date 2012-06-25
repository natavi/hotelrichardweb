using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class chambres : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Request.IsSecureConnection)
            {
                Response.Redirect(Request.Url.AbsoluteUri.Replace("https://", "http://"));
            }

        }
    }
}