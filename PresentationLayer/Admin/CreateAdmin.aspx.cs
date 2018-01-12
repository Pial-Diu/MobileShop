using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PresentationLayer.Admin
{
    public partial class CreateAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Result = 0;
            string ConString = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("insert into [admin] (aname,aemail,apassword,arole) " +
                "values(@name,@email,@password,0)", con);
            objCommand.Parameters.AddWithValue("@name", txtName.Text);
            objCommand.Parameters.AddWithValue("@email", txtEmail.Text);
            objCommand.Parameters.AddWithValue("@password", txtPassword.Text);
            con.Open();

            Result = objCommand.ExecuteNonQuery();
            con.Close();
            if (Result == 1) Response.Write("Done");
        }
    }
}