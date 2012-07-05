using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace hotelrichardweb
{
	public partial class  AddSite : BasePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("monument");
                DropDownList1.Items.Add("musée");
                DropDownList1.Items.Add("salle de spectacle ou de concert");
                DropDownList1.Items.Add("restaurant");
                DropDownList1.Items.Add("stade");
                DropDownList1.Items.Add("parc d'expositions");
                DropDownList1.Items.Add("jardin et bois");
            }
            
		}

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
                try
                {
                    FileUpload1.SaveAs(Server.MapPath("/")+"/imagessites/" + FileUpload1.FileName);
                    Label1.Text = "File name: " +
                         FileUpload1.PostedFile.FileName + "<br>" +
                         FileUpload1.PostedFile.ContentLength + " kb<br>" +
                         "Content type: " +
                         FileUpload1.PostedFile.ContentType;
                }
                catch (Exception ex)
                {
                    Label1.Text = "ERROR: " + ex.Message.ToString();
                }

            
            SqlCommand c = new SqlCommand();
            c.CommandText = "INSERT INTO Sites (Name, Description, path, type, Localisation, Temps) VALUES (@Name,@Description,@path,@type,@Localisation,@Temps); SELECT SCOPE_IDENTITY() AS EXPR2";
            c.Parameters.AddWithValue("@Name", TextBox2.Text);
            c.Parameters.AddWithValue("@Description", TextBox3.Text);
            c.Parameters.AddWithValue("@path", "~/imagessites/"+FileUpload1.FileName);
            c.Parameters.AddWithValue("@type", DropDownList1.Text);
            c.Parameters.AddWithValue("@Localisation", Locaalis.Text);
            c.Parameters.AddWithValue("@Temps", Temps.Text);
            c.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
            c.Connection.Open();
            int increm = Convert.ToInt32(c.ExecuteScalar());
            c.Connection.Close();
        }
	}
}