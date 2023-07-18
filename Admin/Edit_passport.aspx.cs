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
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["pid"] = Convert.ToInt32(Request.QueryString.Get("pid"));
            pid  = Convert.ToInt32(ViewState["pid"].ToString());
            cn.Open();
            qry = "select * from passport where pid=" +pid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_no.Text = dr["no"].ToString();
                txt_details.Text = dr["details"].ToString();
                txt_requirefor.Text = dr["requiredFor"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {

        pid= Convert.ToInt32(ViewState["pid"].ToString());
        cn.Open();
        qry = "update passport set no='" + txt_no.Text + "',details='" + txt_details.Text + "',requiredFor='" + txt_requirefor.Text + "' where pid=" + pid;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Display_passport.aspx");
        cn.Close();
    }
}