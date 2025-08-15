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
    public class EditCatCls
    {
        ConCls con = new ConCls();
        public int upd_Cat(int id,string des,string img,string stat)
        {
            string up = "update Category_table set Category_image='" + img+"',Category_description='" + des + "',Category_status='" + stat + "' where Category_id="+id+"";
            int i = con.Fun_NonQuery(up);
            return i;
        }
        public DataSet LoadData()
        {
            string lddta = "select * from Category_table";
            DataSet ds = con.Fun_Adapter(lddta);
            return ds;
        }
        public SqlDataReader setData(int id)
        {
            string val = "select Category_image,Category_description,Category_status from Category_table where Category_id=" + id + "";
            return con.Fun_Read(val);
        }

    }
}
