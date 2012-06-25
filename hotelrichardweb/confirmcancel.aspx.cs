using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace hotelrichardweb
{
    public partial class confirmcancel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            cdatasource.UpdateParameters["reservationnumber"].DefaultValue = this.Request["reservationnumber"];
            cdatasource.Update();

            Response.Redirect("/cancelOK.aspx?reservationnumber=" + this.Request["reservationnumber"] + "");
        }
    }
}