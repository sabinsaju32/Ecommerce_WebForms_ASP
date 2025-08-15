using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DAL;

namespace BLL
{
    public class BillCls
    {
        ConCls obj = new ConCls();
        public DataSet getBill(int userid)
        {
            string str = "SELECT p.product_name, o.quantity, o.sub_total FROM order_table o JOIN product_table p ON o.product_id = p.product_id WHERE o.user_id = " + userid + "";
            return obj.Fun_Adapter(str);
        }
        public int getTotal(int userid)
        {
            string str = "SELECT SUM(sub_total) AS total_subtotal FROM order_table WHERE user_id =" + userid + "";
            int total = Convert.ToInt32(obj.Fun_Exe_Scalar(str));
            return total;
        }
        public void del(int user_id)
        {
            string str = "DELETE FROM Order_table WHERE user_id ="+user_id+"";
            obj.Fun_NonQuery(str);
        }
        public int changebillstat(int user_id)
        {
            string str = "UPDATE bill_table SET bill_status = 'paid' WHERE user_id =" + user_id + "";
            int i = obj.Fun_NonQuery(str);
            return i;
        }
    }
}
