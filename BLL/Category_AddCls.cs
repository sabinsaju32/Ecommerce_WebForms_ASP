using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class Category_AddCls
    {
        ConCls obj = new ConCls();
        public int insert_categ(string nm,string img,string desc)
        {
            string str = "insert into Category_table values('" + nm + "','" + img + "','" + desc + "','Active')";
            int i = obj.Fun_NonQuery(str);
            return i;
        }
    }
}
