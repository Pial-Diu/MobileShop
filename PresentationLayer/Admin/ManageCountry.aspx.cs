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
    public partial class ManageCountry : System.Web.UI.Page
    {
        EntityCountryAndState entity = new EntityCountryAndState();
        BusinessCountryAndState business = new BusinessCountryAndState();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            entity.Country = txtCountryName.Text;
            int Result = business.BusinessCountry(entity);
            Response.Redirect(Request.RawUrl);
        }
    }
}