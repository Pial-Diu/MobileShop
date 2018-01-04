using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using MobileShop.EntityLayer;
using MobileShob.DataAccessLayer;

namespace MobileShop.BusinessLayer
{
    public class BusinessLogin
    {
        DALLogin DAL = new DALLogin();
        public int BusinessLogins(EntityLogin entity)
        {
            int Result = 0;
            SqlParameter[] objDataParams = new SqlParameter[2];
            objDataParams[0] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
            objDataParams[0].Value = entity.Email;

            objDataParams[1] = new SqlParameter("@Password", SqlDbType.VarChar, 50);
            objDataParams[1].Value = entity.Password;
            Result = DAL.DALLogins(objDataParams);

            return Result;
        }
        


    }
}
