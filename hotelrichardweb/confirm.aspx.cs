using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace hotelrichardweb
{
    public partial class confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            selectincremdata.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            

            selectincremdata.SelectParameters.Add(new Parameter("increm"));
            selectincremdata.SelectParameters["increm"].DefaultValue = Request["id"];
            selectincremdata.Select(new DataSourceSelectArguments());

            DataList1.DataBind();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
          

        }
    }
}