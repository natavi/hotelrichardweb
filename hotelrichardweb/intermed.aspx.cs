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
    public partial class intermed : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpRequest req = this.Request;
                string sj = Request["jour"];
                int jour = Int16.Parse(sj);
                string sm = Request["mois"];
                int mois = Int16.Parse(sm);
                string sa = Request["annee"];
                int annee = Int16.Parse(sa);
                string snuits = Request["nuits"];
                int nuits = Int16.Parse(snuits);
                DateTime d = new DateTime(annee, mois, jour);
                DateTime dfin = d.AddDays(nuits);
                availdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                availdatasource.SelectParameters["datedebut"].DefaultValue = d.ToShortDateString();
                availdatasource.SelectParameters["datefin"].DefaultValue = dfin.ToShortDateString();
                availdatasource.Select(new DataSourceSelectArguments());
                DataList1.DataBind();

                // availdatasource2.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                // availdatasource2.SelectParameters["datedebut"].DefaultValue = d.ToShortDateString();
                // availdatasource2.SelectParameters["datefin"].DefaultValue = dfin.ToShortDateString();
                // availdatasource2.Select(new DataSourceSelectArguments());
                //DataList2.DataBind();

                availdatasource3.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                availdatasource3.SelectParameters["datedebut"].DefaultValue = d.ToShortDateString();
                availdatasource3.SelectParameters["datefin"].DefaultValue = dfin.ToShortDateString();
                availdatasource3.Select(new DataSourceSelectArguments());
                DataList3.DataBind();
            }
        }

        protected void changeColor(object sender,DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item ||
                   e.Item.ItemType == ListItemType.AlternatingItem)
            {
                System.Data.DataRowView drv =
                    (System.Data.DataRowView)(e.Item.DataItem);
                int quantity = int.Parse(drv.Row["disponibilite"].ToString());
                if (quantity == 0)
                {
                    e.Item.BackColor = System.Drawing.Color.Red;
                }
                else
                {
                    e.Item.BackColor = System.Drawing.Color.Green;

                }
            }
        }

        protected void enablebutton(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item ||
                   e.Item.ItemType == ListItemType.AlternatingItem)
            {
                System.Data.DataRowView drv =
                    (System.Data.DataRowView)(e.Item.DataItem);
                int quantity = int.Parse(drv.Row["expr2"].ToString());
                
                if (quantity == 0)
                {

                    DataList3.Controls[0].FindControl("Label1").Visible = false;
                    DataList3.Controls[0].FindControl("textboxprix").Visible = false;
                    DataList3.Controls[0].FindControl("buttonb").Visible = false;
                    DataList3.Controls[0].FindControl("nodisp").Visible = true;
                    // DataList3.Items.Controls[1].Visible = false;
                }
                else
                {

                    DataList3.Controls[0].FindControl("Label1").Visible = true;
                    DataList3.Controls[0].FindControl("textboxprix").Visible = true;
                    DataList3.Controls[0].FindControl("buttonb").Visible = true;
                    DataList3.Controls[0].FindControl("nodisp").Visible = false;

                }
            }
        }

        protected void reserve(object sender, EventArgs e)
        {
            int PRIX = Int16.Parse(((Label)DataList3.Controls[0].FindControl("textboxprix")).Text);

            HttpRequest req = this.Request;
            string sj = Request["jour"];
            int jour = Int16.Parse(sj);
            string sm = Request["mois"];
            int mois = Int16.Parse(sm);
            string sa = Request["annee"];
            int annee = Int16.Parse(sa);
            string snuits = Request["nuits"];
            int nuits = Int16.Parse(snuits);

            Response.Redirect("detailsperso.aspx?jour=" + sj + "&mois=" + sm + "&annee=" + annee + "&nuits=" + nuits  +"&prix=" + PRIX +"");

        }

    }
}