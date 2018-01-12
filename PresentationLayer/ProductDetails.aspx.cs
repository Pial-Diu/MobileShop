using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PresentationLayer
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ConString = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("select * from Product where id=@id", con);
            objCommand.Parameters.AddWithValue("@id", Request.QueryString["ID"]);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(objCommand);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}