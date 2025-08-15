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
    public partial class User_home : System.Web.UI.Page
    {
        Userhomcls obj = new Userhomcls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = obj.getCat();
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int cat_id = Convert.ToInt32(e.CommandArgument);
            Session["cat_id"] = cat_id;
            Response.Redirect("ViewAllProduts.aspx");
        }
    }
}