using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class Musees : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            availdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            availdatasource.Select(new DataSourceSelectArguments());
            availdatasource.SelectParameters["typem"].DefaultValue = "musée";
            Datagrid.DataBind();
        }
    }
}