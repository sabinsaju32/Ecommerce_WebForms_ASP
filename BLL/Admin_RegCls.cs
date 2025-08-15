using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Admin_RegCls
    {
        ConCls obj = new ConCls();
        public int Insert_AdminDb(string name,string email,string usr,string pw)
        {
            string str4= "select count(Login_id) from Login_table where Username='" + usr + "'";
            string str_4 = obj.Fun_Exe_Scalar(str4);
            if (str_4 == "0")
            {

                string str = "select max(Reg_id) from Login_table";
                string maxreg_id = obj.Fun_Exe_Scalar(str);
                int reg_id = 0;
                if (maxreg_id == "")
                {
                    reg_id = 1;
                }
                else
                {
                    int newregid = Convert.ToInt32(maxreg_id);
                    reg_id = newregid + 1;
                }

                string str1 = "insert into Admin_reg values("+reg_id+",'" + name + "','" + email + "')";
                int i = obj.Fun_NonQuery(str1);

                if (i == 1)
                {
                    string str3 = "insert into Login_table values(" + reg_id + ",'" + usr + "','" + pw + "','Admin')";
                    int j = obj.Fun_NonQuery(str3);
                }
                return i;
            }
            else
            {
                return -1;
            }
        }



    }
}
