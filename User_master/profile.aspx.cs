using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_master_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.Open();
            qry = "select * from user_master where uid='" + Session["uid"].ToString()+"'";
            SqlCommand cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lblname.Text =dr["uname"].ToString();
                lblemail.Text =dr["email"].ToString();
                lblpass.Text =dr["password"].ToString();
                lblmobno.Text =dr["mobno"].ToString();
            }

        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("editprofile.aspx");
    }
}