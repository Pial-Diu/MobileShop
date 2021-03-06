﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MobileShob.DataAccessLayer
{
    public class DALUserLogin
    {
        public int DALLogins(SqlParameter[] data)
        {
            string ConString = ConfigurationManager.ConnectionStrings["DB_MOBILE_SHOPConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand objCommand = new SqlCommand("SP_USERLOGIN", con);
            objCommand.CommandType = CommandType.StoredProcedure;

            objCommand.Parameters.AddRange(data);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(objCommand);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                int uid = Convert.ToInt32(dt.Rows[0]["id"]);
                return uid;
            }
            else return 0;
        }


    }
}
