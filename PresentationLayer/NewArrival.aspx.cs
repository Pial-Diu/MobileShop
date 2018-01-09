using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PresentationLayer
{
    public partial class NewArrival : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string ConString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("select * from Product ORDER BY ID desc;", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(objCommand);
            da.Fill(dt);
            con.Close();
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}