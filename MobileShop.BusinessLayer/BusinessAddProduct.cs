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
    public class BusinessAddProduct
    {
        public int BusinessManufacturer(EntityAddProduct entity)
        {
            int Result = 0;

            SqlParameter objDataParams = new SqlParameter();

            objDataParams = new SqlParameter("@Name", SqlDbType.VarChar, 50)
            {
                Value = entity.Manufacturer
            };

            DALProduct obj = new DALProduct();
            Result = obj.DataManufacturer(objDataParams);

            return Result;
        }

        public int BusinessProduct(EntityAddProduct entity)
        {
            int Result = 0;
            SqlParameter[] objDataParams = new SqlParameter[14];

            objDataParams[0] = new SqlParameter("@Brand", SqlDbType.VarChar, 50);
            objDataParams[0].Value = entity.Brand;

            objDataParams[1] = new SqlParameter("@Model", SqlDbType.VarChar, 50);
            objDataParams[1].Value = entity.Model;

            objDataParams[2] = new SqlParameter("@Price", SqlDbType.Float);
            objDataParams[2].Value = float.Parse(entity.Price);

            objDataParams[3] = new SqlParameter("@Warranty", SqlDbType.VarChar, 50);
            objDataParams[3].Value = entity.Warranty;

            objDataParams[4] = new SqlParameter("@CamFront", SqlDbType.Int);
            objDataParams[4].Value = Convert.ToInt32(entity.CamFront);

            objDataParams[5] = new SqlParameter("@CamBack", SqlDbType.Int);
            objDataParams[5].Value = Convert.ToInt32(entity.CamBack);

            objDataParams[6] = new SqlParameter("@RAM", SqlDbType.VarChar, 50);
            objDataParams[6].Value = entity.RAM;

            objDataParams[7] = new SqlParameter("@ROM", SqlDbType.VarChar, 50);
            objDataParams[7].Value = entity.ROM;

            objDataParams[8] = new SqlParameter("@Processor", SqlDbType.VarChar, 50);
            objDataParams[8].Value = entity.Processor;

            objDataParams[9] = new SqlParameter("@OS", SqlDbType.VarChar, 50);
            objDataParams[9].Value = entity.OS;

            objDataParams[10] = new SqlParameter("@Battery", SqlDbType.Int);
            objDataParams[10].Value = Convert.ToInt32(entity.Battery);

            objDataParams[11] = new SqlParameter("@Display", SqlDbType.VarChar, 50);
            objDataParams[11].Value = entity.Display;

            DateTime today = DateTime.Today;

            objDataParams[12] = new SqlParameter("@Date", SqlDbType.Date);
            objDataParams[12].Value = today;

            objDataParams[13] = new SqlParameter("@Image", SqlDbType.VarChar, 200);
            objDataParams[13].Value = entity.Image;

            DALProduct obj = new DALProduct();
            Result = obj.DataProduct(objDataParams);

            return Result;
        }

    }
}
