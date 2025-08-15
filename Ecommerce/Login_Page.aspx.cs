using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Ecommerce
{
    public partial class Login_Page : System.Web.UI.Page
    {
        LoginCls obj = new LoginCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string val = obj.Login_db(TextBox1.Text, TextBox2.Text);
            if(val=="1")
            {
                string val2 = obj.Reg_id(TextBox1.Text, TextBox2.Text);
                int reg_id = Convert.ToInt32(val2);
                string val3 = obj.Log_type(reg_id);
                if (val3 == "User") 
                {
                    Session["usr_id"] = reg_id;
                    Response.Redirect("User_home.aspx");
                }
                else if(val3=="Admin")
                {
                    Response.Redirect("Admin_home.aspx");
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Enter a Valid Username and Password";
            }
        }
    }
}