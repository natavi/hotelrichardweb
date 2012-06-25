using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class cancelOK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LIT.Text = "La reservation " +this.Request["reservationname"] +" a ete annulee";
        }
    }
}