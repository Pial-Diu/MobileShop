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
    public partial class MainSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null) return;
            string SqlConnectionString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection Con = new SqlConnection(SqlConnectionString);
            string Query = "select * from [TBL_CUSTOMER] where id=@id";
            SqlCommand cmd = new SqlCommand(Query, Con);
            cmd.Parameters.AddWithValue("@id", Session["User"]);
            Con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Con.Close();
            if (dt.Rows.Count > 0) Session["UserName"] = dt.Rows[0]["CNAME"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Session.Remove("buyitems");
            Response.Redirect("Login.aspx");
        }
    }
}