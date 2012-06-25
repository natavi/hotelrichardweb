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
    public partial class ResaManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string number= this.Request["reservationnumber"];
           // label4.Text = number;
            cdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            cdatasource.SelectParameters["reservationnumber"].DefaultValue = number;
            cdatasource.Select(new DataSourceSelectArguments());
            DataList1.DataBind();
        }

        protected void Modify(object sender, EventArgs e)
        {

        }

        protected void Cancel(object sender, EventArgs e)
        {
            Response.Redirect("/confirmcancel.aspx?reservationnumber=" + this.Request["reservationnumber"] + "");
        }
    }
}