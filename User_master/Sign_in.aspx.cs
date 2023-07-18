using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_master_Sign_in : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from user_master where email='" +txt_email .Text + "' and password='" + txt_pass.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            //txt_email.Text = dr[0].ToString();
            //txt_pass.Text = dr[1].ToString();
            Session["uid"] = dr["uid"].ToString();
            Session["uname"] = dr["uname"].ToString();
            Session["email"] = dr["email"].ToString();
            Session["password"] = dr["password"].ToString();
            Session["mobno"] = dr["mobno"].ToString();
            Session["profile"] = dr["profile"].ToString();
            Response.Redirect("uhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('incorrect email and password');</script>");

        }
        cn.Close();
    }
    
}