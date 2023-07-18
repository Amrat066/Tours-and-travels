using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_master_MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        Image1.ImageUrl = "./profile/" + Session["profile"].ToString();
        Label1.Text = Session["uname"].ToString();
    }
}
