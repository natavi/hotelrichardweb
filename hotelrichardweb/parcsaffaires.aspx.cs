using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace hotelrichardweb
{
    public partial class parcsaffaires : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            availdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            availdatasource.Select(new DataSourceSelectArguments());
            availdatasource.SelectParameters["typem"].DefaultValue = "parc d'expositions";
            Datagrid.DataBind();
        }
    }
}