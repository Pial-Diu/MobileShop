using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


namespace PresentationLayer
{
    public partial class Home : System.Web.UI.Page
    {
        public DataTable dt = new DataTable();
        public DataTable dt2 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //ListView1.Visible = true;
                string ConString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
                SqlConnection con = new SqlConnection(ConString);
                SqlCommand objCommand = new SqlCommand("select * from Product", con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(objCommand);
                da.Fill(dt);
                con.Close();
                ListView1.DataSource = dt;
                ListView1.DataBind();

                SqlCommand objCommand2 = new SqlCommand("select * from Manufacturer", con);
                con.Open();
                SqlDataAdapter da2 = new SqlDataAdapter(objCommand2);
                da2.Fill(dt2);
                con.Close();
                ListView2.DataSource = dt2;
                ListView2.DataBind();
            //}
        }
        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataTable dt3 = new DataTable();
            string ConString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand obj = new SqlCommand("select * from product where pmodel like @model or pbrand like @model", con);
            obj.Parameters.AddWithValue("@model", '%' + TextBox1.Text + '%');
            con.Open();
            SqlDataAdapter das = new SqlDataAdapter(obj);
            das.Fill(dt3);
            con.Close();
            ListView1.DataSource = dt3;
            ListView1.DataBind();
        }
    }
}