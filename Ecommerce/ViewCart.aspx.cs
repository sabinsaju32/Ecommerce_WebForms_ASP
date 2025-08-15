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
    public partial class ViewCart : System.Web.UI.Page
    {
        ViewCartCls obj = new ViewCartCls();
        public void BindGrid()
        {
            int user_id = Convert.ToInt32(Session["usr_id"]);
            DataSet ds = obj.DisplayGrid(user_id);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGrid();
            }    
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int get_id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            obj.DeleteCart(get_id);
            BindGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox quant = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];

            int pdt_id = obj.pdt_id(getid);
            int newQuantity = Convert.ToInt32(quant.Text);
            int stock = obj.GetQuantity(pdt_id);
            int product_price = obj.pdt_price(pdt_id);

            
            if (newQuantity<=stock)
            {
                int sub_total = newQuantity * product_price;
                obj.UpdateQuantity(newQuantity, getid,sub_total);
                Label1.Visible = false;
            }
            else if (newQuantity < 1)
            {
                Label1.Text = "Quantity must be atleast 1!";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Quantity exceeds available stock!";
                Label1.Visible = true;
            }
            GridView1.EditIndex = -1;
            BindGrid();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int maxcartid = obj.maxofcartid();
            int user_id = Convert.ToInt32(Session["usr_id"]);
            int i = 0;
            int total_amt = 0;
            for (i=1;i<=maxcartid;i++)
            {
                SqlDataReader dr = obj.getdata(i, user_id);
                int prodt_id = 0;
                int subtotal = 0;
                int qnty = 0;
                while(dr.Read())
                {
                    prodt_id = Convert.ToInt32(dr["product_id"]);
                    subtotal = Convert.ToInt32(dr["Sub_total"]);
                    qnty= Convert.ToInt32(dr["Quantity"]);
                }
                total_amt += subtotal;
                int x = obj.insertorder(user_id, subtotal, prodt_id ,qnty);
                int y = obj.delcart(i);
            }
            DateTime currentDate = DateTime.Now;
            string date = currentDate.ToString("yyyy-MM-dd");
            int z = obj.insertbill(user_id, total_amt,date);
            Response.Redirect("BillPage.aspx");


        }





    }
}