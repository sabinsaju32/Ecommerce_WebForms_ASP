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
    public class Userhomcls
    {
        ConCls obj = new ConCls();
        public DataSet getCat()
        {
            string str = "select * from Category_table where Category_status='Active'";
            DataSet ds = obj.Fun_Adapter(str);
            return ds;
        }
    }
}
