using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\.net project\TOUR_TRAVELLES2\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select count(*) from tour_details";
        cmd = new SqlCommand(qry, cn);
        cmd.Parameters.AddWithValue("@pname", Label2.Text.Trim());
        Label2.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();

        cn.Open();
        qry = "select count(*) from user_master";
        cmd = new SqlCommand(qry, cn);
        cmd.Parameters.AddWithValue("@uname", Label1.Text.Trim());
        Label1.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();

        

        //cn.Open();
        //qry = "select count(*) from State_Master";
        //cmd = new SqlCommand(qry, cn);
        //cmd.Parameters.AddWithValue("@statename", Label3.Text.Trim());
        //Label3.Text = Convert.ToString(cmd.ExecuteScalar());
        //cn.Close();
    }
}