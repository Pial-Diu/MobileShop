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
    public class DALaddUser
    {
        public int DataAddUser(SqlParameter[] objData)
        {
            int Result = 0;
            string ConString = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("sp_INSERTUSER", con);
            objCommand.CommandType = CommandType.StoredProcedure;
            
            objCommand.Parameters.AddRange(objData);
            con.Open();

            Result = objCommand.ExecuteNonQuery();
            con.Close();

            return Result;
        }

    }
}
