using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MobileShop.BusinessLayer;
using MobileShop.EntityLayer;

namespace PresentationLayer.Admin
{
    public partial class ManageManufacturer : System.Web.UI.Page
    {
        EntityAddProduct entity = new EntityAddProduct();
        BusinessAddProduct business = new BusinessAddProduct();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            entity.Manufacturer = txtManufacturer.Text;
            int Result = business.BusinessManufacturer(entity);
            Response.Redirect(Request.RawUrl);
        }
    }
}