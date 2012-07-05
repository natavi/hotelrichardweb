using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace hotelrichardweb
{
    public partial class Salles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            availdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            availdatasource.Select(new DataSourceSelectArguments());
            availdatasource.SelectParameters["typem"].DefaultValue = "salle de spectacle ou de concert";
            Datarepeat.DataBind();
        }
    }
}