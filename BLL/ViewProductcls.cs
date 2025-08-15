using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using System.Data.SqlClient;

namespace BLL
{
    public class ViewProductcls
    {

        ConCls obj = new ConCls();
        public SqlDataReader GetProducts(int pdt_id)
        {
            string str = "select * from Product_table where Product_id=" + pdt_id + "";
            return obj.Fun_Read(str);
        }

        public string GetQuantity(int pdt_id)
        {
            string str = "select stock from Product_table where Product_id=" + pdt_id + "";
            return obj.Fun_Exe_Scalar(str);
        }
        public int AddtoCart(int cart_id, int user_id, int pdt_id, int quantity, int subtotal)
        {
            string str="insert into cart_table values("+cart_id+","+user_id+","+pdt_id+","+quantity+","+subtotal+")";
            return obj.Fun_NonQuery(str);
        }
        public string GetCartID()
        {
            string str = "select max(cart_id) from cart_table";
            return obj.Fun_Exe_Scalar(str);
        }
    }
}
