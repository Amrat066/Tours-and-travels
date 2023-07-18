using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_master_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int tdid =Convert.ToInt32( Request.QueryString.Get("tdid"));
        Response.Redirect("hotelinfo.aspx?tdid=" + tdid);

    }
    protected void Repeater6_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}