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
    public partial class CustomSearch : System.Web.UI.Page
    {
        public DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Country();
            }
        }
        private void Bind_Country()
        {
            string SqlConnectionString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection con = new SqlConnection(SqlConnectionString);
            string Query = "select * from Manufacturer";
            con.Open();
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            DataRow dr;
            dr = dt.NewRow();
            dr.ItemArray = new object[] { 0, "All Brands" };
            dt.Rows.InsertAt(dr, 0);
            ddlBrand.DataSource = dt;
            ddlBrand.DataTextField = "MName";
            ddlBrand.DataValueField = "id";

            ddlBrand.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt3 = new DataTable();
            string ConString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection con = new SqlConnection(ConString);
            if(Convert.ToInt32(ddlBrand.Text)==0)
            {
                SqlCommand obj = new SqlCommand("select * from product where pprice <= @price and (pmodel like @model or pbrand like @model)", con);
                obj.Parameters.AddWithValue("@model", '%' + TextBox1.Text + '%');
                obj.Parameters.AddWithValue("@price", Convert.ToInt32( DropDownList1.Text));
                con.Open();
                SqlDataAdapter das = new SqlDataAdapter(obj);
                das.Fill(dt3);
                con.Close();
                ListView1.DataSource = dt3;
                ListView1.DataBind();
            }
            else
            {
                SqlCommand obj = new SqlCommand("select * from product where pbrand = @brand and pprice <= @price and pmodel like @model", con);
                obj.Parameters.AddWithValue("@model", '%' + TextBox1.Text + '%');
                obj.Parameters.AddWithValue("@price", Convert.ToInt32(DropDownList1.Text));
                obj.Parameters.AddWithValue("@brand", ddlBrand.SelectedItem.Text);
                con.Open();
                SqlDataAdapter das = new SqlDataAdapter(obj);
                das.Fill(dt3);
                con.Close();
                ListView1.DataSource = dt3;
                ListView1.DataBind();
            }
        }
    }
}