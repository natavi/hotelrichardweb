using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class detailsperso : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Request.IsSecureConnection)
            {
                Response.Redirect(Request.Url.AbsoluteUri.Replace("https://", "http://"));
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
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
                string sprix = Request["prix"];
                int prix = Int16.Parse(sprix);
                Response.Redirect("/detailsCB.aspx?nom=" + nom.Text + "&prenom=" + prenom.Text + "&adresse=" + adresse.Text + "&tel=" + Tel.Text + "&mail=" + mail.Text + "&jour=" + sj + "&mois=" + sm + "&annee=" + annee + "&nuits=" + nuits + "&prix=" + prix + "");
                 
            }
           /* if (!IsValid)
            {
                string msg = "";
                // Loop through all validation controls to see which
                // generated the errors.
                foreach (IValidator aValidator in this.Validators)
                {
                    if (!aValidator.IsValid)
                    {
                        msg += aValidator.ErrorMessage;
                    }
                }
                //Labelerror.Text = msg;
            }*/
        }

        protected void NomValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
           args.IsValid = (!nom.Text.Equals(""));
        }

        protected void PrenomValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            args.IsValid = (!prenom.Text.Equals(""));
        }

        protected void AdressValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            args.IsValid = (!(adresse.Text.Equals("")));
        }

        protected void TelValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            args.IsValid = (!(Tel.Text.Equals(""))) & Tel.Text.Length > 5 & Tel.Text.Length < 15;
        }

        protected void MailValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            args.IsValid = (!(mail.Text.Equals("")) & mail.Text.Contains("@"));
        }

    }
}