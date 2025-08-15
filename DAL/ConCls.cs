using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class ConCls
    {
        SqlConnection con = new SqlConnection(@"server=DESKTOP-NNCNGTG\SQLEXPRESS;database=ecommerce1;Integrated security=true");
        
        public int Fun_NonQuery(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string Fun_Exe_Scalar(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            string i = cmd.ExecuteScalar().ToString();
            con.Close();
            return i;
        }
        public SqlDataReader Fun_Read(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet Fun_Adapter(string sql)
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}
