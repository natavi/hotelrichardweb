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
            DropDownList1.Items.Add("monument ou lieux à d'interet");
            DropDownList1.Items.Add("musée");
            DropDownList1.Items.Add("salle de spectacle");
            DropDownList1.Items.Add("salle de concert");
            DropDownList1.Items.Add("restaurant");
            DropDownList1.Items.Add("stade");
            DropDownList1.Items.Add("parc d'expositions");
            DropDownList1.Items.Add("jardin et bois");
            
		}

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand c = new SqlCommand();
            c.CommandText = "INSERT INTO Sites VALUES (@nom,@description,@type,@localisation)";
            c.Parameters.AddWithValue("@nom", TextBox2.Text);
            c.Parameters.AddWithValue("@description", TextBox3.Text);
            c.Parameters.AddWithValue("@type", DropDownList1.Text);
            c.Parameters.AddWithValue("@localisation", TextBox1.Text);
            c.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
            c.Connection.Open();
            int increm = Convert.ToInt32(c.ExecuteScalar());
            c.Connection.Close();
        }
	}
}