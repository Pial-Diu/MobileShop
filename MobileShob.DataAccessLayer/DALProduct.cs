using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MobileShob.DataAccessLayer
{
    public class DALProduct
    {
        public int DataManufacturer(SqlParameter objData)
        {

            int Result = 0;
            string ConString = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("sp_INSERTMANUFACTURER", con)
            {
                CommandType = CommandType.StoredProcedure
            };

            objCommand.Parameters.Add(objData);
            con.Open();

            Result = objCommand.ExecuteNonQuery();
            con.Close();

            return Result;
        }

        public int DataProduct(SqlParameter[] objData)
        {
            int Result = 0;
            string ConString = "server=DESKTOP-QPN61SP ;database=DB_MOBILE_SHOP; Trusted_Connection=true;";
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("sp_INSERTPRODUCT", con);
            objCommand.CommandType = CommandType.StoredProcedure;

            objCommand.Parameters.AddRange(objData);
            con.Open();

            Result = objCommand.ExecuteNonQuery();
            con.Close();

            return Result;
        }
    }
}
