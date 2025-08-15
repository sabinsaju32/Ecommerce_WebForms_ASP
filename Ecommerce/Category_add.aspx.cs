using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Ecommerce
{
    public partial class Category_add : System.Web.UI.Page
    {
        Category_AddCls obj = new Category_AddCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String img = "~/PHS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));

            int i = obj.insert_categ(TextBox1.Text, img, TextBox2.Text);
            if(i==1)
            {
                Label1.Text = "Inserted";
            }
        }
    }
}