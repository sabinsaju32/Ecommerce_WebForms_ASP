using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;

namespace BLL
{
    public class ViewCartCls
    {
        ConCls obj = new ConCls();
        public DataSet DisplayGrid(int user_id)
        {
            string str= "SELECT p.*, c.*FROM product_table p INNER JOIN cart_table c ON p.product_id = c.product_id WHERE c.user_id = "+user_id+"";
            return obj.Fun_Adapter(str);
        }

        public void DeleteCart(int cart_id)
        {
            string str= "DELETE FROM cart_table WHERE cart_id = "+cart_id+"";
            obj.Fun_NonQuery(str);
        }
        public void UpdateQuantity(int quan,int cart_id,int subttl)
        {
            string str = "update  cart_table set Quantity=" + quan + ",Sub_total="+subttl+" where cart_id=" + cart_id + "";
            obj.Fun_NonQuery(str);
        }
        public int GetQuantity(int pdt_id)
        {
            string str = "select stock from Product_table where Product_id=" + pdt_id + "";
            int quan = Convert.ToInt32(obj.Fun_Exe_Scalar(str));
            return quan;
        }
        public int pdt_id(int cart_id)
        {
            string str = "SELECT product_id FROM cart_table WHERE cart_id = " + cart_id + "";
            int pdt_id = Convert.ToInt32(obj.Fun_Exe_Scalar(str));
            return pdt_id;
        }
        public int pdt_price(int prdt_id)
        {
            string str = "SELECT product_price FROM Product_table where Product_id=" + prdt_id + "";
            int pdt_price = Convert.ToInt32(obj.Fun_Exe_Scalar(str));
            return pdt_price;
        }
        public int maxofcartid()
        {
            string str = "SELECT max(cart_id) from cart_table";
            int cart_idmax = Convert.ToInt32(obj.Fun_Exe_Scalar(str));
            return cart_idmax;
        }
        public SqlDataReader getdata(int cartid,int userid)
        {
            string str = "SELECT * from cart_table where cart_id="+cartid+" and user_id="+userid+"";
            return obj.Fun_Read(str);
        }
        public int insertorder(int usr_id,int subtotal,int prdt_id,int qnty)
        {
            string str = "insert into order_table values("+prdt_id+","+usr_id+","+qnty+","+subtotal+",'order')";
            int pdt_id = Convert.ToInt32(obj.Fun_NonQuery(str));
            return pdt_id;
        }
        public string pdt_name(int pdt_id)
        {
            string str = "select product_name from product_table where product_id=" + pdt_id + "";
            return obj.Fun_Exe_Scalar(str);
        }
        public int delcart(int cart_id)
        {
            string str = "delete from cart_table where cart_id="+cart_id+"";
            return obj.Fun_NonQuery(str);
        }
        public int insertbill(int usr_id, int total_amount,string date)
        {
            string str = "insert into bill_table values(" + usr_id + "," + total_amount + ",'"+date+"','Not Paid')";
            int pdt_id = Convert.ToInt32(obj.Fun_NonQuery(str));
            return pdt_id;
        }

    }
}
