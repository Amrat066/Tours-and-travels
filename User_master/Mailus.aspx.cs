using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_master_Mailus : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry="insert into mailus values('"+txt_name .Text +"','"+txt_email .Text +"','"+txt_mobno.Text+"','"+txt_msg .Text +"')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
        cn.Close();

    }
}