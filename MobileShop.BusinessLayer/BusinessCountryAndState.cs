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
    public class BusinessCountryAndState
    {
        
        public int BusinessCountry(EntityCountryAndState entity)
        {
            int Result = 0;

            SqlParameter objDataParams = new SqlParameter();

            objDataParams = new SqlParameter("@Name", SqlDbType.VarChar, 50)
            {
                Value = entity.Country
            };

            DALCountryAndState obj = new DALCountryAndState();
            Result = obj.DataCountry(objDataParams);

            return Result;
        }
        //public int BusinessState(EntityCountryAndState entity)
        //{
        //    int Result = 0;

        //    SqlParameter objDataParams = new SqlParameter;

        //    objDataParams = new SqlParameter("@Name", SqlDbType.VarChar, 50);
        //    objDataParams.Value = entity.Country;

        //    DALaddUser obj = new DALaddUser();
        //    Result = obj.DataAddUser(objDataParams);

        //    return Result;
        //}
    }
}
