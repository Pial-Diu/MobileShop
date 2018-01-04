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
    public class BusinessAddUser
    {
        public int BusinessAddUsers(EntityAddUser entityAddUser)
        {
            
            int Result = 0;

            SqlParameter[] objDataParams = new SqlParameter[12];

            objDataParams[0] = new SqlParameter("@Name", SqlDbType.VarChar,50);
            objDataParams[0].Value = entityAddUser.Name;

            objDataParams[1] = new SqlParameter("@Email", SqlDbType.VarChar,50);
            objDataParams[1].Value = entityAddUser.Email;

            objDataParams[2] = new SqlParameter("@Password", SqlDbType.VarChar,50);
            objDataParams[2].Value = entityAddUser.Password;

            objDataParams[3] = new SqlParameter("@DOB", SqlDbType.Date);
            objDataParams[3].Value = entityAddUser.DOB;

            objDataParams[4] = new SqlParameter("@Phone", SqlDbType.VarChar,50);
            objDataParams[4].Value = entityAddUser.Phone;

            objDataParams[5] = new SqlParameter("@Country", SqlDbType.VarChar,20);
            objDataParams[5].Value = entityAddUser.Country;

            objDataParams[6] = new SqlParameter("@State", SqlDbType.VarChar,20);
            objDataParams[6].Value = entityAddUser.State;

            objDataParams[7] = new SqlParameter("@Address", SqlDbType.VarChar,200);
            objDataParams[7].Value = entityAddUser.Address;

            objDataParams[8] = new SqlParameter("@Question", SqlDbType.VarChar,200);
            objDataParams[8].Value = entityAddUser.Question;

            objDataParams[9] = new SqlParameter("@Answer", SqlDbType.VarChar,200);
            objDataParams[9].Value = entityAddUser.Answer;

            objDataParams[10] = new SqlParameter("@Gender", SqlDbType.VarChar,10);
            objDataParams[10].Value = entityAddUser.Gender;

            DateTime today = DateTime.Today;

            objDataParams[11] = new SqlParameter("@joindate", SqlDbType.Date);
            objDataParams[11].Value = today;

            DALaddUser obj = new DALaddUser();
            Result = obj.DataAddUser(objDataParams);

            return Result ;
        }
    }
}
