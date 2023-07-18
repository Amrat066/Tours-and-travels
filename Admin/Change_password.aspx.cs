using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Change_password : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click1(object sender, EventArgs e)
    {

        SqlDataAdapter sda = new SqlDataAdapter("select Password,Email from Admin_master where Password='" + txt_oldpass.Text + "' and Email='"+Session["Email"].ToString()+"'",cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            if (txt_newpass.Text == txt_cnnpass.Text)
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("update Admin_master set Password='" + txt_newpass.Text + "' where Email='" + Session["Email"].ToString() + "'", cn);
                cmd.ExecuteNonQuery();

                cn.Close();
                Response.Write("<script>alert('successfully password will be changed');</script>");

            }
            else
            {
                Response.Write("<script>alert('New password and confirm new password must be same.......');</script>");

            }
        }
    }
}