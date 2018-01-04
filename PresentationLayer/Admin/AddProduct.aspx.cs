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
using System.IO;


namespace PresentationLayer.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        EntityAddProduct entity = new EntityAddProduct();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Brand();
            }
        }
        protected void Bind_Brand()
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
            dr.ItemArray = new object[] { 0, "--Select Brand--" };
            dt.Rows.InsertAt(dr, 0);
            ddlBrand.DataSource = dt;
            ddlBrand.DataTextField = "MName";
            ddlBrand.DataValueField = "id";

            ddlBrand.DataBind();
        }

        protected void ddlBrand_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Result = 0;
            BusinessAddProduct business = new BusinessAddProduct();
            entity.Model = txtModel.Text;
            entity.Brand = ddlBrand.SelectedItem.Text;
            entity.Price = txtPrice.Text;
            entity.Warranty = warranty.Text;
            entity.CamFront = txtFront.Text;
            entity.CamBack = txtBack.Text;
            entity.RAM = txtRAM.Text;
            entity.ROM = txtROM.Text;
            entity.Processor = txtProcessor.Text;
            entity.OS = txtOS.Text;
            entity.Battery = txtBattery.Text;
            entity.Display = txtDisplay.Text;
            entity.Image = "image";
            
            if (FileUpload1.HasFile)
            {
                string imageName = Rand();
                string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                string path = Server.MapPath("~/Images/") + imageName + extension;
                FileUpload1.SaveAs(path);
                entity.Image = "~/Images/" +imageName + extension;
            }
            else
            {
                Response.Write("Please upload an image of the product !");
                return;
            }
            Result = business.BusinessProduct(entity);
            if (Result!=0) Response.Write("Registeration Successfull!");
            else Response.Write("Registeration not Successfull!");
        }
        private string Rand()
        {
            Random rnd = new Random();
            int num = rnd.Next(2000000,9000000);
            return num.ToString();
        }
    }
}