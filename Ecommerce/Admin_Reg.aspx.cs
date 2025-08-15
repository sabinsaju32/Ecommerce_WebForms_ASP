using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Ecommerce
{
    public partial class Admin_Reg : System.Web.UI.Page
    {
        Admin_RegCls obj = new Admin_RegCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = obj.Insert_AdminDb(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
            if(i==1)
            {
                Label1.Visible = true;
                Label1.Text = "inserted";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Choose other username";
            }
        }
    }
}