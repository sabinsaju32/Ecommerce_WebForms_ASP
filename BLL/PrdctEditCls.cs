using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class PrdctEditCls
    {
        ConCls con = new ConCls();
        public int upd_prdt(int id, string des, string img, string stat,int price)
        {
            string up = "update Product_table set Product_price='" + price + "',Product_image='" + img + "',Product_description='" + des + "',Product_status='" + stat + "' where Product_id=" + id + "";
            int i = con.Fun_NonQuery(up);
            return i;
        }
        public DataSet LoadData()
        {
            string lddta = "select * from Product_table";
            DataSet ds = con.Fun_Adapter(lddta);
            return ds;
        }
        public SqlDataReader setData(int id)
        {
            string val = "select Product_image,Product_description,Product_status,Product_price from Product_table where Product_id=" + id + "";
            return con.Fun_Read(val);
        }


    }
}
