using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class LoginCls
    {
        ConCls obj = new ConCls();
        public string Login_db(string usr, string pw)
        {
            string str = "select count(Login_id) from Login_table where Username='" + usr + "' and Password='" + pw + "'";
            string val = obj.Fun_Exe_Scalar(str);
            return val;
        }
        public string Log_type(int id)
        {
            string str = "select Log_type from Login_table where Reg_id='"+id+"'";
            string val = obj.Fun_Exe_Scalar(str);
            return val;
        }
        public string Reg_id(string usr,string pw)
        {
            string str = "select Reg_id from Login_table where Username='" + usr + "' and Password='" + pw + "'";
            string val = obj.Fun_Exe_Scalar(str);
            return val;
        }
    }
}
