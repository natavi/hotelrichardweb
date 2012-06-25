

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

using System.Threading;
using System.Net.Mail;
using System.Net;

using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Reflection;
using SecuritySwitch.Abstractions;

namespace hotelrichardweb
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void envoimail(string smail)
        {

            MailMessage message = new MailMessage("nathaniel@fasthostels.com", smail, "reservation", "");
            message.Body = "Bonjour\n";
            message.Body = message.Body + "Bienvenue sur le reseau de l'hotel Richard et de ses partenaires\n";
            message.Body = message.Body + "En vous inscrivant sur ce réseau vous pourrez gérer toutes vos reservations à l'hotel Richard et dans les hotels et restaurants partenaires, \n";
            message.Body = message.Body + "vous bénéficierez de conseils personalises, ainsi que des retours d'experiences parisiennes des autres membres du reseau\n";
            message.Body = message.Body + "Veuillez clicker sur le lien ci dessous pour  confirmer votre inscription\n";

            message.Body = message.Body + "https://www.fasthostels.com/createUserFinal.aspx?mail=" + smail+"\n";
            
            message.Body = message.Body + "Vous pouvez nous appeler au 01.43.79.39.98 pour de plus amples informations \n\n";
            message.Body = message.Body + "En vous souhaitant la bienvenue\n\n";
            message.Body = message.Body + "Nathaniel BENCHIMOL\n";
            message.Body = message.Body + "Manager\n";
            SmtpClient sc = new SmtpClient("mail.ikoula.fr", 25);
            sc.Credentials = new NetworkCredential("nathaniel@fasthostels.com", "yh230112", "localhost");
            sc.Send(message);
        }
    }
}