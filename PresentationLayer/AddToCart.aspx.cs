using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PresentationLayer
{
    public partial class AddToCart : System.Web.UI.Page
    {
        public string address = "";
        public string phone = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null) Response.Redirect("Login.aspx");
            address = "";
            phone = "";
            string ConString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("select * from TBL_CUSTOMER where id=@id", con);
            objCommand.Parameters.AddWithValue("@id", Session["User"]);
            con.Open();
            SqlDataAdapter dat = new SqlDataAdapter(objCommand);
            DataTable dtt = new DataTable();
            dat.Fill(dtt);
            con.Close();
            if (dtt.Rows.Count > 0)
            {
                address = dtt.Rows[0]["caddress"].ToString();
                phone = dtt.Rows[0]["cPhone"].ToString();
            }

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pbrand");
                dt.Columns.Add("pmodel");
                dt.Columns.Add("pprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["pbrand"] = ds.Tables[0].Rows[0]["pbrand"].ToString();
                        dr["pmodel"] = ds.Tables[0].Rows[0]["pmodel"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["pimage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["pprice"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int Flag = 0;
                        foreach (DataRow dtr in dt.Rows)
                            if (Request.QueryString["id"] == dtr["id"].ToString()) Flag = 1;
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        String mycon = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        if(Flag==0)
                        {
                            dr["sno"] = sr + 1;
                            dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                            dr["pbrand"] = ds.Tables[0].Rows[0]["pbrand"].ToString();
                            dr["pmodel"] = ds.Tables[0].Rows[0]["pmodel"].ToString();
                            dr["pimage"] = ds.Tables[0].Rows[0]["pimage"].ToString();
                            dr["pprice"] = ds.Tables[0].Rows[0]["pprice"].ToString();
                            dt.Rows.Add(dr);
                        }
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            Check();
        }
        protected void Check()
        {
            DataTable dts = new DataTable();
            dts = (DataTable)Session["buyitems"];
            int cut = 0;
            if (dts != null)
            {
                Label1.Text = dts.Rows.Count.ToString();
                foreach (DataRow dr in dts.Rows)
                {
                    cut += Convert.ToInt32(dr["pprice"]);
                }
                Label2.Text = cut.ToString();
            }
            else
            {
                Label1.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;

                }
            }

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("AddToCart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("buyitems");
            //Response.Write("<script>alert('Order Confirmed');</script>");
            Response.Redirect("Home.aspx");
        }
    }
}