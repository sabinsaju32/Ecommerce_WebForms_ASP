using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class UserRegCls
    {
        ConCls obj = new ConCls();
        public int Insert_Db(string nm,string eml,string phn,string Add,string Pin,string loc,string land,string Dist,string stat,string Photo,string usr,string pas)
        {
            string str4 = "select count(Login_id) from Login_table where Username='" + usr + "'";
            string str_4 = obj.Fun_Exe_Scalar(str4);
            if (str_4 == "0")
            {
                string str = "select max(Reg_id) from Login_table ";
                string maxregid = obj.Fun_Exe_Scalar(str);
                int reg_id = 0;
                if (maxregid == "")
                {
                    reg_id = 1;
                }
                else
                {
                    int reg_idnew = Convert.ToInt32(maxregid);
                    reg_id = reg_idnew + 1;
                }

                string str1 = "insert into User_reg values("+reg_id+",'" + nm + "','" + eml + "','" + phn + "','" + Add + "','" + Pin + "','" + loc + "','" + land + "','" + Dist + "','" + stat + "','" + Photo + "','Active')";
                int i = obj.Fun_NonQuery(str1);
                if (i == 1)
                {
                    string str3 = "insert into Login_table values(" + reg_id + ",'" + usr + "','" + pas + "','User')";
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
