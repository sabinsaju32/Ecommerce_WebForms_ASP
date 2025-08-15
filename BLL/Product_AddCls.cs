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
    public class Product_AddCls
    {
        ConCls obj = new ConCls();
        public int insert_prod(string nm,int cat_id,int price,string img,string desc)
        {
            string str = "insert into Product_table values('" + nm + "'," + cat_id + ",'" + price + "','" + img + "','" + desc + "','Active')";
            int i = obj.Fun_NonQuery(str);
            return i;
        }
        public DataSet Get_Categ_id()
        {
            string str = "select Category_id,Category_name from Category_table";
            DataSet ds = obj.Fun_Adapter(str);
            return ds;
        }
    }
}
