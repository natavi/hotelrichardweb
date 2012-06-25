using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace hotelrichardweb
{
    public partial class LoginCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            datasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            datasource.SelectParameters.Add("increm", TypeCode.Int16, "");
            datasource.SelectParameters.Add("confidentialcode", TypeCode.Int16, "");
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            datasource.Select(new DataSourceSelectArguments());
            dl.DataBind();
            if (dl.Controls.Count > 0)
            {
                Response.Redirect("/manageresa?resanum=" + Int16.Parse(Login.Text)+"");
            }
                
        }
    }
}