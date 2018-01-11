using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PresentationLayer.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null) Response.Redirect("AdminLogin.aspx");

            string SqlConnectionString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection Con = new SqlConnection(SqlConnectionString);
            string Query = "select * from [ADMIN] where id=@id";
            SqlCommand cmd = new SqlCommand(Query, Con);
            cmd.Parameters.AddWithValue("@id", Session["Admin"]);
            Con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["AdminName"] = dt.Rows[0]["ANAME"].ToString();
                Session["AdminRole"] = Convert.ToInt32(dt.Rows[0]["AROLE"]);
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Remove("Admin");
            Response.Redirect("AdminLogin.aspx");
        }
    }
}