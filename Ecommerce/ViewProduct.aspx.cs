
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
    public partial class ViewProduct : System.Web.UI.Page
    {
        ViewProductcls obj = new ViewProductcls();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader rd = obj.GetProducts(Convert.ToInt32(Session["prdt_id"]));
            while(rd.Read())
            {
                Image1.ImageUrl = rd["Product_image"].ToString();
                Label1.Text = rd["Product_price"].ToString();
                Label2.Text = rd["Product_name"].ToString();
                Label3.Text= rd["Product_description"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int qua = Convert.ToInt32(Label4.Text);
            if (qua > 1)
            {
                qua--;
                Label4.Text = qua.ToString();
            }
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int qua = Convert.ToInt32(Label4.Text);
            int pdt_id = Convert.ToInt32(Session["prdt_id"]);
            string qnty = obj.GetQuantity(pdt_id);
            int quantity = Convert.ToInt32(qnty);
            if (qua+1<= quantity)
            {
                qua++;
                Label4.Text = qua.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int pdt_price = 0;
            SqlDataReader rd = obj.GetProducts(Convert.ToInt32(Session["prdt_id"]));
            while (rd.Read())
            {
                pdt_price = Convert.ToInt32(rd["Product_price"]);
            }
            string cartt_id = obj.GetCartID();
            int crt_id = 0;
            if (cartt_id == "")
            {
                crt_id = 1;
            }
            else
            {
                int cart_id = Convert.ToInt32(cartt_id);
                crt_id = cart_id + 1;
            }

            int pdt_id = Convert.ToInt32(Session["prdt_id"]);
            int user_id = Convert.ToInt32(Session["usr_id"]);
            int Quantity= Convert.ToInt32(Label4.Text);
            int sub_total = Quantity * pdt_price;

            obj.AddtoCart(crt_id,user_id, pdt_id,Quantity,sub_total);


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_home.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }
    }
}