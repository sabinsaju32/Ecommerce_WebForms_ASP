using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace Ecommerce
{
    public partial class ViewAllProduts : System.Web.UI.Page
    {
        ViewAllProductsCls obj = new ViewAllProductsCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Session["cat_id"]);
                DataSet ds = obj.GetallProducts(id);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                Label3.Text = id.ToString();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int prd_id = Convert.ToInt32(e.CommandArgument);
            Session["prdt_id"] = prd_id;
            Response.Redirect("ViewProduct.aspx");
        }
    }
}