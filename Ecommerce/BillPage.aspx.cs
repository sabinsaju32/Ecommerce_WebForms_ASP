using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BLL;
namespace Ecommerce
{
    public partial class BillPage : System.Web.UI.Page
    {
        BillCls obj = new BillCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            int user_id = Convert.ToInt32(Session["usr_id"]);
            DataSet ds = obj.getBill(user_id);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Label1.Text = obj.getTotal(user_id).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int user_id = Convert.ToInt32(Session["usr_id"]);
            obj.del(user_id);
            int i = obj.changebillstat(user_id);
            Response.Redirect("PaymentPage.aspx");
        }
    }
}