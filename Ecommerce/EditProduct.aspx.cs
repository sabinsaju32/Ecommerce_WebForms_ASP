using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;
namespace Ecommerce
{
    public partial class EditProduct : System.Web.UI.Page
    {
        PrdctEditCls obj = new PrdctEditCls();
        public void Bind_Grid()
        {

            DataSet ds = obj.LoadData();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Bind_Grid();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "~/PHS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));

            Image1.ImageUrl = img;

            int id = Convert.ToInt32(ViewState["prdt_id"]);
            int i = obj.upd_prdt(id, TextBox1.Text,img,TextBox2.Text,Convert.ToInt32(TextBox3.Text));

            if (i == 1)
            {
                Label1.Text = "Updated";
            }
            Bind_Grid();
        }


        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            ViewState["prdt_id"] = id;
            SqlDataReader rd = obj.setData(id);
            while (rd.Read())
            {
                TextBox1.Text = rd["Product_description"].ToString();
                Image1.ImageUrl = rd["Product_image"].ToString();
                TextBox2.Text = rd["Product_status"].ToString();
                TextBox3.Text = rd["Product_price"].ToString();
            }
        }
    }
}