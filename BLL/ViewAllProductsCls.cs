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
    public class ViewAllProductsCls
    {
        ConCls obj = new ConCls();
        public DataSet GetallProducts(int cat_id)
        {
            string str= "select * from Product_table where Category_id="+cat_id+" and Product_status='active'";
            return obj.Fun_Adapter(str);
        }
    }
}
