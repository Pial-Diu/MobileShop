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
    public partial class ContactUs : System.Web.UI.Page
    {
        EntityFeedback entity = new EntityFeedback();
        BusinessFeedback business = new BusinessFeedback();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Session["User"]==null)
            {
                Response.Write("<script>alert('Please Login');</script>");
                return;
            }
            int Result = 0;
            entity.Response= Request.Form["S1"];
            entity.Cid = (int)Session["User"];
            Result = business.Feedback(entity);
            if (Result != 0) Response.Write("Feedback Submitted!");
            else Response.Write("Feedback not submitted !");
        }
    }
}