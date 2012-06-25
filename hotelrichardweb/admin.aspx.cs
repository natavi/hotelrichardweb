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
    

        public class DateCollection
        {
            static ArrayList l;
            private DateTime d;

            public DateCollection(DateTime _d)
            {
                d = _d;
                l = new ArrayList();
                //getDates();

            }
           /* public void getDates()
            {

                l = new ArrayList();

                DateTime k = d;
                int i = 0;
                while (i<20)
                {

                    l.Add(k);
                    i = i + 1;
                    k.AddDays(1);

                }

            }*/

             public static ArrayList getCollection(DateTime dat) {

                  DateTime k = dat;
                  int i = 0;
                
                  while (i<20)
                    {

                    l.Add(k);
                    i = i + 1;
                    k.AddDays(1);

                    }
                 return l;
             }
        }
        
    public partial class admin : System.Web.UI.Page
    {       
        protected void Page_Load(object sender, EventArgs e)
        {
            int k = 1;
            while (k <= 31)
            {
                datedebutjour.Items.Add(k.ToString());
                datefinjour.Items.Add(k.ToString());
                k = k + 1;
            }

            int mois=DateTime.Now.Month;
            int annee = DateTime.Now.Year;

            int j = 1;

            while (j < 24)
            {
                datedebutmoisannnee.Items.Add(mois.ToString()+ " " + annee.ToString());
                datefinmoisannnee.Items.Add(mois.ToString() + " " + annee.ToString());
                //datedebutmoisannnee.Items.Add(new ListItem(mois.ToString() + " " + annee.ToString()));
                mois = mois + 1;
                if (mois > 12)
                {
                    annee = annee + 1;
                    mois = mois - 12;
                }
                j = j + 1;
            }

        }

        protected void getTwentyDates(object sender, ObjectDataSourceSelectingEventArgs e)
            
        {
            DateTime dat =(DateTime) e.InputParameters["dat"]; 
            
            IList<DateTime> li = new List<DateTime>();
            int i= 0;
            while (i < 20)
            {
                li.Add(dat);
                dat=dat.AddDays(1);
                
            }

            //return li;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime d = new DateTime();
            DateTime dfin = new DateTime();

            String mois = datedebutmoisannnee.SelectedValue.Substring(0, datedebutmoisannnee.SelectedValue.Count() - 5);
            String annee = datedebutmoisannnee.SelectedValue.Substring(datedebutmoisannnee.SelectedValue.Count()-5,  datedebutmoisannnee.SelectedValue.Count()-1);
            d = new DateTime(Int32.Parse(annee), Int32.Parse(mois), Int32.Parse(datedebutjour.SelectedValue));

            String moisfin = datefinmoisannnee.SelectedValue.Substring(0, datefinmoisannnee.SelectedValue.Count() - 5);
            String anneefin = datefinmoisannnee.SelectedValue.Substring(datefinmoisannnee.SelectedValue.Count() - 5, datefinmoisannnee.SelectedValue.Count() - 1);
            dfin = new DateTime(Int32.Parse(anneefin), Int32.Parse(moisfin), Int32.Parse(datefinjour.SelectedValue));
            duree.Value = (dfin.Subtract(d).Days-1).ToString();
            //dfin = d.AddDays(20);
            cdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            //Parameter p =new Parameter("datedebut",TypeCode.DateTime);
            cdatasource.SelectParameters["datedebut"].DefaultValue = d.ToShortDateString();
            cdatasource.SelectParameters["datefin"].DefaultValue = dfin.ToShortDateString();

            cdatasource.Select(new DataSourceSelectArguments());
           
            //repet.DataSource = cdatasource;
            repet.DataBind();

         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // si elle n'est pas là
            // String s = System.Configuration["connectionstring"];

            cdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            int k = 0;
            
            while (k < Int16.Parse(duree.Value))
            {
                Label l = new Label();
                TextBox td = new TextBox();
                TextBox tp = new TextBox();
                //Parameter p =new Parameter("datedebut",TypeCode.DateTime);
                l = (Label)repet.Items[k].FindControl("labell");
                td = (TextBox)repet.Items[k].FindControl("textboxd");
                tp = (TextBox)repet.Items[k].FindControl("textboxp");
                cdatasource.UpdateParameters["date"].DefaultValue = l.Text;
                cdatasource.UpdateParameters["disponibilite"].DefaultValue = td.Text;
                cdatasource.UpdateParameters["prix"].DefaultValue = tp.Text;
                cdatasource.Update();
                k = k + 1;
            }
        }


    }
}