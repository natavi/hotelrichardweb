using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Resources;
using System.Globalization;
using System.Threading;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;

namespace hotelrichardweb
{
    public class DDLImage
    {
        public string ddlImgPath;
        public string ddlText;
        public int ddlId;


    }

    public partial class SiteGeneral : System.Web.UI.MasterPage
    {




        protected void Page_Load(object sender, EventArgs e)
        {
            //  Literal ltr = new Literal();
            //  List<DDLImage> lstDDLImage = GetDDLImage();
            // for (int i = 0; i < lstDDLImage.Count; i++)
            // {
            //     ltr.Text = ltr.Text + "<span class='ddlText' id='" + lstDDLImage[i].ddlId + "' onclick='GetSelectedValue(this);'>" + lstDDLImage[i].ddlImgPath + lstDDLImage[i].ddlText + "</span>" + "<br/>";
            // }
            // this.Controls.Add(ltr);


            //Langages.Text = "Langage";
            //load datasource of a comboImage basicly like this
            //  ServerControl11.DataSource = datasource;
            //ServerControl11.DataBind();

            if (!IsPostBack)
            {
                /* Literal ltr = new Literal();
                 List<DDLImage> lstDDLImage = GetDDLImage();
                 for (int i = 0; i < lstDDLImage.Count; i++)
                 {
                     ltr.Text = ltr.Text + "<span class='ddlText' id='" + lstDDLImage[i].ddlId + "' onclick='GetSelectedValue(this);'>" + lstDDLImage[i].ddlImgPath + lstDDLImage[i].ddlText + "</span>" + "<br/>";
                 }
                effect.Controls.Add(ltr);
                 */

                /*  Langages.Items.Add("Default");
                  Langages.Items.Add("Anglais");
                  Langages.Items.Add("Allemand");
                  Langages.Items.Add("Espagnol");
                  Langages.Items.Add("Italien");
                  Langages.Items.Add("Russe");
                  Langages.Items.Add("Polonais");
                  Langages.Items.Add("Portugais");
                  Langages.Items.Add("Roumain");
                  Langages.Items.Add("مسرحيات");
                  */
            }



        }






        protected void Page_Init(object sender, EventArgs e)
        {
            Session["culture"] = "fr";
            switch (Session["culture"].ToString())
            {

                case "en": //Langages.Text = "Anglais";
                    break;
                case "es": //Langages.Text = "Espagnol";
                    break;
                case "it": //Langages.Text = "Italien";
                    break;
                case "ru": //Langages.Text = "Russe";
                    break;
                case "pt": //Langages.Text = "Portugais";
                    break;
                case "de": //Langages.Text = "Allemand";
                    break;
                case "pl": //Langages.Text = "Polonais";
                    break;
                case "ar": //Langages.Text = "مسرحيات";
                    break;

            }
        }


        protected void btnGet_Click(object sender, EventArgs e)
        {
            // lblServerValue.Text = hidValue.Value;
        }


        protected void OnChanged(object sender, EventArgs e)
        {

            /* switch (Langages.Text) {
                 case ("Anglais"): Session["culture"] = "en"; 
                     break;
                 case ("Espagnol"): Session["culture"] = "es"; 
                     break;
                 case ("Italien"): Session["culture"] = "it";
                     break;
                 case ("Russe"): Session["culture"] = "ru"; 
                     break;
                 case ("Portugais"): Session["culture"] = "pt";
                     break;
                 case ("Allemand"): Session["culture"] = "de"; 
                     break;
                 case ("Polonais"): Session["culture"] = "pl";
                     break;
                 case ("مسرحيات"): Session["culture"] = "ar"; 
                     break;
             }
             */


            //reload last requested page with new culture


            // accueil.Text = manager.GetString("Site.Master.accueil");
        }

        protected void Langages_Load(object sender, EventArgs e)
        {

        }

        protected void L(object sender, EventArgs e)
        {

        }





        public class DDLImage
        {
            public string ddlImgPath;
            public string ddlText;
            public int ddlId;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            Session["culture"] = "fr";
            Server.Transfer(Request.Path);
        }

    }

}

