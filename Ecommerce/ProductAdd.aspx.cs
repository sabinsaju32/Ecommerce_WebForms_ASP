using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce
{
    public partial class ProductAdd : System.Web.UI.Page
    {
        Product_AddCls obj = new Product_AddCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataSet ds = obj.Get_Categ_id();
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Category_name";
                DropDownList1.DataValueField = "Category_id";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "~/PHS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));

            int Cat_id = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            int i = obj.insert_prod(TextBox1.Text, Cat_id,Convert.ToInt32(TextBox2.Text), img, TextBox4.Text);
            if(i==1)
            {
                Label1.Visible = true;
                Label1.Text = "Product Added";
            }
        }
    }
}