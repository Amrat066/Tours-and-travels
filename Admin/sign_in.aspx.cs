using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;

public partial class Admin_sign_in : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=D:\.net projectTOUR_TRAVELLES2\TOUR_TRAVELLES2\App_DataDatabase.mdf;Integrated Security = True; Connect Timeout = 30");

	SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
       
        cn.Open();
        qry = "select * from Admin_master where Email='" +txt_email .Text + "' and Password='" + txt_pass.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txt_email.Text = dr[0].ToString();
            txt_pass.Text = dr[1].ToString();
            Session["Aname"] = dr["Aname"].ToString();
            Session["pic"] = dr["pic"].ToString();
            Session["Email"] = dr["Email"].ToString();

            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('incorrect email and password');</script>");

        }
        cn.Close();
    }
}