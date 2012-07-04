using System;
using System.Data;
using System.Configuration;
using System.Globalization;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace hotelrichardweb
{
    /// <summary>
    /// Custom base page TO CHECK ERRORS
    /// </summary>
    public class BasePage : Page
    {

            public BasePage()
            {

            }

            private const string m_DefaultCulture = "fr";

            protected override void InitializeCulture()
            {
                //retrieve culture information from session

                string culture = Convert.ToString(Session["culture"]);

                //check whether a culture is stored in the session
                if (culture.Length > 0) Culture = culture;

                //set culture to current thread
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);

                //call base class
                base.InitializeCulture();
            }

            protected override void OnError(EventArgs e)
            {
                Exception ex = Server.GetLastError();
                Session["LastError"] = ex;
                Response.Redirect("~/error.aspx?"+ex.Message);
            }
        }

    }

