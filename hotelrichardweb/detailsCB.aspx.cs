using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using SendCharFax;
using System.Threading;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Reflection;
using SecuritySwitch.Abstractions;

namespace hotelrichardweb
{
    public partial class detailsCB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          int k=1;
          while (k < 13)
          {
              expdatemois.Items.Add(k.ToString());
              k = k + 1;
          }
          
          int j = 2012;
          while (j < 2017)
          {
              expdateannee.Items.Add(j.ToString());
              j = j + 1;
          }

          insertdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (!Request.IsSecureConnection & !Request.Url.Host.Contains("localhost"))
            {
                //threenumbers.Text = "secure";
                Response.Redirect(Request.Url.AbsoluteUri.Replace("http://", "https://"));
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpRequest req = this.Request;
            string snom = Request["nom"];
            string sprenom = Request["prenom"];
            string sadresse = Request["adresse"];
            string stelephone = Request["tel"];
            string smail = Request["mail"];
            string sprix = Request["prix"];
            int prix = Int16.Parse(sprix);
            string sj = Request["jour"];
            int jour = Int16.Parse(sj);
            string sm = Request["mois"];
            int mois = Int16.Parse(sm);
            string sa = Request["annee"];
            int annee = Int16.Parse(sa);
            string snuits = Request["nuits"];
            int nuits = Int16.Parse(snuits);
            DateTime datedebut = new DateTime(annee,mois, jour);
            //Labelerror.Text = "";
            insertdatasource.ConnectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            byte[] data;
            data=new byte[4];
            RandomNumberGenerator rg = new RNGCryptoServiceProvider();
            rg.GetBytes(data);
            int PIN = 100 * data[0] + 10 * data[1] + data[3];
            if (IsValid)
            {
                SqlCommand c = new SqlCommand();
                c.CommandText = "INSERT INTO Reservations (Nom, Prenom,Adresse, telephone,email, datedebut, duree, typechambre, prix, dateresa, pin) VALUES (@nom,@prenom,@adresse,@telephone,@email,@datedebut,@duree,@typechambre,@prix,@dateresa, @pin); SELECT SCOPE_IDENTITY() AS EXPR2";
                c.Parameters.AddWithValue("@nom",snom);
                c.Parameters.AddWithValue("@prenom", sprenom);
                c.Parameters.AddWithValue("@adresse", sadresse);
                c.Parameters.AddWithValue("@telephone",stelephone);
                c.Parameters.AddWithValue("@email", smail);
                c.Parameters.AddWithValue("@datedebut",datedebut.Month+"/"+datedebut.Day+"/"+datedebut.Year);
                c.Parameters.AddWithValue("@duree", nuits.ToString());
                c.Parameters.AddWithValue("@TypeChambre", "double");
                c.Parameters.AddWithValue("@prix", prix.ToString());
                c.Parameters.AddWithValue("@dateresa", System.DateTime.Now.Month + "/" + System.DateTime.Now.Day + "/" + System.DateTime.Now.Year);
                c.Parameters.AddWithValue("@pin", PIN);
                c.Connection= new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
                c.Connection.Open();
                int increm = Convert.ToInt32(c.ExecuteScalar());
                c.Connection.Close();
                DateTime dfin = datedebut.AddDays(nuits);
                SqlCommand cdim = new SqlCommand();
                cdim.CommandText = "UPDATE Dates SET Disponibilite=Disponibilite-1 WHERE Date BETWEEN @datedebut AND @datefin";
                
                cdim.Parameters.AddWithValue("@datedebut", datedebut.Month + "/" + datedebut.Day + "/" + datedebut.Year);
                cdim.Parameters.AddWithValue("@datefin", dfin.Month + "/" + dfin.Day + "/" + dfin.Year);
                cdim.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
                cdim.Connection.Open();
                cdim.ExecuteNonQuery();
                cdim.Connection.Close();




                // System.Data.DataView dv = (System.Data.DataView)insertdatasource.Select(new DataSourceSelectArguments());
                // int id = (int)dv.Table.Rows[0][0];
                string username = "Benchimol";
                string password = "ae191009";
                string faxnumber = "+33143791737";
                string faxcontents = snom +"   "+ sprenom+"  "+stelephone+ "   " + datedebut+ " " + nuits;
                faxcontents="Regarding M. BENCHIMOL,\n";
                faxcontents= faxcontents+"We have just received the following reservation for your hostel and we confirm you the details by fax:\n";
                faxcontents = faxcontents+"Arrival:"+ datedebut.Day+ "/"+ datedebut.Month+"/"+  datedebut.Year+"\n";
                faxcontents = faxcontents+"Departure:"+ dfin.Day+ "/"+ dfin.Month+"/"+  dfin.Year+"\n";
                faxcontents = faxcontents+"Room Type room for the client: double room with shared bathroom\n";
                faxcontents = faxcontents+"Total price:"+ sprix+ "\n";
                faxcontents = faxcontents+ "CC Number:" + CCnumber.Text+"\n";
                faxcontents = faxcontents + "Expiration date:" + expdatemois.SelectedValue +" / "+ expdateannee.SelectedValue+ "\n" ;
                faxcontents = faxcontents + "Code CVC:" + threenumbers.Text +"\n";
                faxcontents = faxcontents+" Guest information:\n";
                faxcontents = faxcontents + "Address:" + sadresse + " City\n:";
                faxcontents = faxcontents + "Telephone:"+stelephone;

                //generateWord(sprenom, snom, smail, datedebut.ToShortDateString(), dfin.ToShortDateString(), nuits.ToString());
                SendCharFax.interfax.InterFax ifx= new SendCharFax.interfax.InterFax();
                long st = ifx.SendCharFax(username, password, faxnumber, faxcontents, "txt");
                Thread.Sleep(5000);
                envoimail(sprenom, snom, smail, datedebut.Day + "/" + datedebut.Month + "/" + datedebut.Year,nuits.ToString(),sprix, PIN,increm);
                Response.Redirect("/confirm.aspx?id="+increm+"");
            }

            if (!IsValid)
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
            }

            
        }

   /*     protected void generateWord(string sprenom, string snom, string smail, string datedebut,string datefin, string duree) {

        Microsoft.Office.Interop.Word.Application App = new Microsoft.Office.Interop.Word.Application();
	    object optional= Missing.Value;
          
			object FileName="fax.docx";
            Microsoft.Office.Interop.Word._Document Doc = App.Documents.Open(ref FileName,
				ref optional,
				ref optional,
				ref optional,
				ref optional,
				ref optional,
				ref optional,
				ref optional,
				ref optional,
				ref optional,
				ref optional,
				ref optional);

			Hashtable Bks= new Hashtable();

			//Récupère tous les Bookmarks du document dans une HashTable
			//Dans les applications office, les index vont de 1 à n compris
			for(int i=1;i<=Doc.Bookmarks.Count;i++)
			{
				object index=i;
                Microsoft.Office.Interop.Word.Bookmark bk = Doc.Bookmarks[index];
				Bks.Add(bk.Name,bk.Range);
			}

            ((Microsoft.Office.Interop.Word.Range)Bks["nom"]).InsertBefore(snom);
            ((Microsoft.Office.Interop.Word.Range)Bks["prenom"]).InsertBefore(sprenom);
            ((Microsoft.Office.Interop.Word.Range)Bks["ArrivalDate"]).InsertBefore(datedebut.ToString());
            ((Microsoft.Office.Interop.Word.Range)Bks["DepartureDate"]).InsertBefore(snom);
            ((Microsoft.Office.Interop.Word.Range)Bks["RoomType"]).InsertBefore("double");
           
            FileName=App.Path.Substring(0,App.Path.LastIndexOf("\\")+1)+"/"+"fax.doc";
            
            Doc.SaveAs(ref FileName,
					ref optional,
					ref optional,
					ref optional,
					ref optional,
					ref optional,
					ref optional,
					ref optional,
					ref optional,
					ref optional,
					ref optional);
			

			App.Quit(ref optional,
					ref optional,
					ref optional);
		}

     */   

        protected void envoimail(string sprenom, string snom, string smail, string sdate, string snuits, string sprix, int pin, int resevationnumber)
        {

            MailMessage message = new MailMessage("nathaniel@fasthostels.com", smail, "reservation", "");
            message.Body = "Bonjour\n";
            message.Body = message.Body + "Nous vous confirmons la reservation de " + snom + " " + sprenom + " a l'hotel Richard\n";
            message.Body = message.Body + "pour le " + sdate+"\n";
            message.Body = message.Body + "pour une durée de " + snuits +"\n";
            message.Body = message.Body + "pour le prix total de " + sprix + "\n\n";
            message.Body = message.Body + "Vous pouvez annuler jusqu'à la veille de votre date d'arrivée\n";
            message.Body = message.Body + "L'hotel se trouve au metro Voltaire (ligne 9), a 100m a pied, au 35 rue Ricahrd Lenoir\n";
            message.Body = message.Body + "Le check in est à 16h mais vous pouvez laisser vos bagages à la bagagerie avant\n";
            message.Body = message.Body + "Le paiement se fait à l'arrivée\n";
            message.Body = message.Body + "Vous pouvez nous appeler au 01.43.79.39.98 pour de plus amples informations \n\n";
            message.Body = message.Body + "Vous pouvez egalement modifier ou annuler la reservation sur le site de www.fasthostels.com: votre numero de reservation est:" + resevationnumber + "et votre code pin est"+ pin +"\n\n";
            message.Body = message.Body + "En vous souhaitant la bienvenue\n\n";
            message.Body = message.Body + "Nathaniel BENCHIMOL\n";
            message.Body = message.Body + "Manager\n";
            SmtpClient sc = new SmtpClient("mail.ikoula.fr", 25);
            sc.Credentials = new NetworkCredential("nathaniel@fasthostels.com", "yh230112","localhost");
            sc.Send(message);
        }



        public bool VerifierCB(string CCnumber)
        {

            // début du code comptabilisé 

            int s = 0, i = 16, v;

            while (i-- > 0)
            {
                v = CCnumber[15 - i] - '0' << i % 2;
                s += (v > 9) ? v - 9 : v;
            }

            return s % 10 < 1;
        }

        protected void TextValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            int s = 0, i = 16, v;
            try
            {
                
                while (i-- > 0)
                {
                    v = args.Value[15 - i] -'0' << i % 2;
                    s += (v > 9) ? v - 9 : v;
                }
            }
            catch (Exception e)
            {

            }

            args.IsValid = s % 10 < 1;
        }

    }
}