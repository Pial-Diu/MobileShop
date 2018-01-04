using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MobileShop.EntityLayer;
using MobileShop.BusinessLayer;

namespace PresentationLayer
{
    public partial class Register : System.Web.UI.Page
    {
        EntityAddUser Entity = new EntityAddUser();

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
            string Query = "select * from country";
            con.Open();
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            DataRow dr;
            dr = dt.NewRow();
            dr.ItemArray = new object[] { 0, "--Select Country--" };
            dt.Rows.InsertAt(dr, 0);
            ddlCountry.DataSource = dt;
            ddlCountry.DataTextField = "Name";
            ddlCountry.DataValueField = "id";
            
            ddlCountry.DataBind();

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BusinessAddUser BusinessAddUser = new BusinessAddUser();
            int Result = 0;
            Entity.Name = txtName.Text;
            Entity.Email = txtEmail.Text;
            Entity.Password = Hash(txtPassword.Text);
            Entity.DOB = txtDOB.Text;
            Entity.Phone = txtPhone.Text;
            Entity.Country = ddlCountry.SelectedItem.Text;
            Entity.State = ddlState.SelectedItem.Text;
            Entity.Address = Request.Form["S1"];
            Entity.Question = Request.Form["S2"];
            Entity.Answer = txtAnswer.Text;
            Entity.Gender = gender.Text;

            //Response.Write(txtName.Text);
            //Response.Write(txtEmail.Text);
            //Response.Write(txtPassword.Text);
            //Response.Write(txtDOB.Text);
            //Response.Write(txtPhone.Text);
            //Response.Write(ddlCountry.Text);
            //Response.Write(ddlState.Text);
            //Response.Write(Entity.Address);
            //Response.Write(Entity.Question);
            //Response.Write(Entity.Answer);
            //Response.Write(Entity.Gender);


            Result = BusinessAddUser.BusinessAddUsers(Entity);
            //if (Result == 8) Response.Write("Hoga Marse!!");
            if (Result==1)
            {
                Response.Write("Registeration Successfull!");
            }
            else
            {
                Response.Write("Registeration not Successfull!");
            }
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        public void refreshstate(int id)
        {
            string SqlConnectionString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection con = new SqlConnection(SqlConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [state] where countryid = @countryid", con);
            cmd.Parameters.AddWithValue("countryid", id);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            ddlState.DataValueField = "id";
            ddlState.DataTextField = "name";
            ddlState.DataSource = dt;
            ddlState.DataBind();
            con.Close();
            
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCountry.ToString() != null)
            {
                int countryid = Convert.ToInt32(ddlCountry.SelectedValue);
                refreshstate(countryid);
            }
        }

        public string Hash(string password)
        {
            var bytes = new System.Text.UTF8Encoding().GetBytes(password);
            var hashBytes = System.Security.Cryptography.MD5.Create().ComputeHash(bytes);
            return Convert.ToBase64String(hashBytes);
        }
    }
}