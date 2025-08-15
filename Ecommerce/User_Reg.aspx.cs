using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Ecommerce
{
    public partial class User_Reg : System.Web.UI.Page
    {
        UserRegCls obj = new UserRegCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string img = "~/PHS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));
            
            int i = obj.Insert_Db(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, img, TextBox10.Text, TextBox11.Text);
            if(i==1)
            {
                Label1.Visible = true;
                Label1.Text = "inserted";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Username already exists";
            }
        }
    }
}