using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    int pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["pid"] = Convert.ToInt32(Request.QueryString.Get("pid"));
        pid= Convert.ToInt32(ViewState["pid"].ToString());
        cn.Open();
        qry = "delete from passport where pid="+pid;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Display_passport.aspx");
    }
}