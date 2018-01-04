using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MobileShop.EntityLayer;
using MobileShop.BusinessLayer;

namespace PresentationLayer.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        EntityLogin entity = new EntityLogin();
        BusinessLogin business = new BusinessLogin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null) Response.Redirect("Dashboard.aspx");
            txtMessage.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Result = 0;
            entity.Email = txtEmail.Text;
            entity.Password = txtPassword.Text;
            Result = business.BusinessLogins(entity);
            if(Result==0)
            {
                txtMessage.Text = "Incorrect Email or Password";
            }
            else
            {
                Session["Admin"] = Result;
                Response.Redirect("Dashboard.aspx");
            }
        }
}
}