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
    public partial class viewresas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                int k = 1;
                while (k < 32)
                {
                    DropDownList1.Items.Add(k.ToString());
                    DropDownList4.Items.Add(k.ToString());
                    k = k + 1;
                }

                int j = 1;
                while (j < 13)
                {
                    DropDownList2.Items.Add(j.ToString());
                    DropDownList5.Items.Add(j.ToString());
                    j = j + 1;

                }

                int l = 2012;
                while (l < 2015)
                {
                    DropDownList3.Items.Add(l.ToString());
                    DropDownList6.Items.Add(l.ToString());
                    l = l + 1;

                }
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string datedebutday = DropDownList1.SelectedValue;
            string datedebutmonth = DropDownList2.SelectedValue;
            string datedebutyear = DropDownList3.SelectedValue;
            string datefinday = DropDownList4.SelectedValue;
            string datefinmonth = DropDownList5.SelectedValue;
            string datefinyear = DropDownList6.SelectedValue;

            DateTime ddebut = new DateTime(Int16.Parse(datedebutyear), Int16.Parse(datedebutmonth), Int16.Parse(datedebutday));
            DateTime dfin = new DateTime( Int16.Parse(datefinyear), Int16.Parse(datefinmonth), Int16.Parse(datefinday));

            availdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            availdatasource.SelectParameters["datedebut"].DefaultValue = ddebut.ToShortDateString();
            availdatasource.SelectParameters["datefin"].DefaultValue = dfin.ToShortDateString();
            availdatasource.Select(new DataSourceSelectArguments());
            DataList1.DataBind();
        }
    }
}