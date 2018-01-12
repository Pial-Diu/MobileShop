using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;

namespace PresentationLayer.Admin
{
    public partial class OrderHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string ConString = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("select o.id,o.ocustomer,o.odate,o.oamount,c.cname from Tbl_order o join tbl_customer c on c.id=o.ocustomer order by o.id desc", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(objCommand);
            da.Fill(dt);
            con.Close();
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}