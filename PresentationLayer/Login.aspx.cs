using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MobileShop.EntityLayer;
using MobileShop.BusinessLayer;

namespace PresentationLayer
{
    public partial class Login : System.Web.UI.Page
    {
        EntityUserLogin entity = new EntityUserLogin();
        BusinessUserLogin business = new BusinessUserLogin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null) Response.Redirect("Home.aspx");
            txtMessage.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin\\AdminLogin.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Result = 0;
            entity.Email = txtEmail.Text;
            entity.Password = Hash(txtPassword.Text);
            Result = business.BusinessLogins(entity);
            if (Result != 0)
            {
                Session["User"] = Result;
                Response.Redirect("Home.aspx");
            }
            else
            {
                txtMessage.Text = "Incorrect Email Or Password!";
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