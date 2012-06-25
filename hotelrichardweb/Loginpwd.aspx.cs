using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class Loginpwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // si elle n'est pas là
            // String s = System.Configuration["connectionstring"];
            if (Login.Text =="50561" & Pwd.Text =="4563")
            {
                Response.Redirect("/admin.aspx");

            }
            
        }
    }
}