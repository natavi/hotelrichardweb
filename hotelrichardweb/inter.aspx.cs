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
    public partial class inter : System.Web.UI.Page
    {
        
        protected void OnLoad(object sender, EventArgs e)
        {
           
            
            DateTime d=DateTime.Parse(Session["date"].ToString());
            int jour = Int16.Parse(Session["jour"].ToString());
            DateTime dfin = d.AddDays(jour);
            availdatasource = new SqlDataSource();
            availdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            availdatasource.Select(new DataSourceSelectArguments());
            availdatasource.SelectParameters["datedebut"].DefaultValue = d.ToShortDateString();
            availdatasource.SelectParameters["datefin"].DefaultValue = dfin.ToShortDateString();
            repet.DataBind();

        }


    }
}