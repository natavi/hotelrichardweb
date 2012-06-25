using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelrichardweb
{
    public partial class default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
             
            // si elle n'est pas là
            // String s = System.Configuration["connectionstring"];
            int duree = 0;
            bool retour = false;
            ConnectionStringSettings connex = ConfigurationManager.ConnectionStrings["ApplicationServices"];
            SqlConnection conn = new SqlConnection(connex.ConnectionString);
            //conn.
            //conn.Driver = ConfigurationManager.ConnectionStrings["S"];
            DateTime datefin= new DateTime(2012,3,1);

            try
            {
                int i = 0;


                while (i < 300)
                {

                    conn.Open();

                    using (
                        SqlCommand command = new SqlCommand("INSERT INTO Dates VALUES ( @datefin,10,45)", conn))
                    {
                        command.Parameters.AddWithValue("@datefin", datefin);
                        command.ExecuteNonQuery();
                        command.Parameters.Clear();
                        
                    }
                    datefin= datefin.AddDays(1);
                    i = i + 1;
                    conn.Close();
                }    
                


            }
            catch (Exception ex)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        
    }
}