using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Aname"] != null && Session["email"] != null && Session["pic"] != null)
            {
                Label1.Text = Session["Aname"].ToString();
                Image1.ImageUrl = "./pic/" + Session["pic"].ToString();
                Image2.ImageUrl = "./pic/" + Session["pic"].ToString();
            }
            else
            {
                Response.Redirect("sign_in.aspx");
            }
        }
    }
}
