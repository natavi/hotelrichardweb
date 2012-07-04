using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class contactresa : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                /*      int k= 1;
                while (k<32) {
                    DropDownList1.Items.Add(k.ToString());
                        k=k+1;
                }

                int l = 1;

                while (l < 13)
                {
                    DropDownList2.Items.Add(l.ToString());
                    l = l + 1;
                }

                int j = 2012;

                while (j < 2015)
                {
                    DropDownList3.Items.Add(j.ToString());
                    j = j + 1;
                }
                */
                DropDownList5.Items.Add("double");
            }
        }

        protected void NbValidate(object source, ServerValidateEventArgs args) 
        {
            args.IsValid = false;

            try
            {
                int k = Int16.Parse(TextBox1.Text);
                args.IsValid = true;
            }
            catch (Exception e)
            {
                

            }
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Request.IsSecureConnection)
            {
                //Literal9.Text = "secure";
                Response.Redirect(Request.Url.AbsoluteUri.Replace("https://", "http://"));
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("intermed.aspx?jour=" + Calendar1.SelectedDate.Day + "&mois=" + Calendar1.SelectedDate.Month + "&annee=" + Calendar1.SelectedDate.Year + "&nuits=" + TextBox1.Text);
            }
            catch (Exception ex)
            {


            }
        }
    }
}