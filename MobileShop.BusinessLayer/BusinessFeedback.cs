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
    public class BusinessFeedback
    {
        public int Feedback(EntityFeedback entity)
        {
            int Result = 0;

            SqlParameter[] objDataParams = new SqlParameter[3];
            DateTime today = DateTime.Today;
            objDataParams[0] = new SqlParameter("@Fdate", SqlDbType.Date)
            {
                Value = today.Date
            };
            objDataParams[1] = new SqlParameter("@Response", SqlDbType.VarChar, 1000)
            {
                Value = entity.Response
            };
            objDataParams[2] = new SqlParameter("@cid", SqlDbType.Int)
            {
                Value = entity.Cid
            };
            DALFeedback obj = new DALFeedback();
            Result = obj.Feedback(objDataParams);

            return Result;
        }

    }
}
