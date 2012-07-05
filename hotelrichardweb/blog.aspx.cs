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
    public partial class blog : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                
             /*   
                
                availdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                availdatasource.SelectParameters["today"].DefaultValue = System.DateTime.Today.ToShortDateString();      
                availdatasource.Select(new DataSourceSelectArguments());
                DataList1.DataBind();

                // availdatasource2.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                // availdatasource2.SelectParameters["datedebut"].DefaultValue = d.ToShortDateString();
                // availdatasource2.SelectParameters["datefin"].DefaultValue = dfin.ToShortDateString();
                // availdatasource2.Select(new DataSourceSelectArguments());
                //DataList2.DataBind();
                */
            }
        }




    }
}