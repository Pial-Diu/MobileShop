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
    public partial class OrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string ConString = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("select p.id,p.pimage,p.pbrand,p.pmodel,p.pprice from ORDER_TRACK o join product p on p.id=o.PRODUCTID where ORDERID=@orderid", con);
            objCommand.Parameters.AddWithValue("@orderid", Request.QueryString["id"]);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(objCommand);
            da.Fill(dt);
            con.Close();
            ListView1.DataSource = dt;
            ListView1.DataBind();

            DataTable dt2 = new DataTable();
            string ConString2 = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con2 = new SqlConnection(ConString2);
            SqlCommand objCommand2 = new SqlCommand("select o.id,o.ocustomer,o.odate,o.oamount,c.cname from Tbl_order o join tbl_customer c on c.id=o.ocustomer where o.id=@id", con2);
            objCommand2.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            con2.Open();
            SqlDataAdapter da2 = new SqlDataAdapter(objCommand2);
            da2.Fill(dt2);
            con2.Close();
            ListView2.DataSource = dt2;
            ListView2.DataBind();

        }
    }
}