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
    int vcdid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["vcdid"] = Convert.ToInt32(Request.QueryString.Get("vcdid"));
            vcdid = Convert.ToInt32(ViewState["vcdid"].ToString());
            cn.Open();
            qry = "select * from visa_country_details where vcdid=" + vcdid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_details.Text = dr["details"].ToString();
            }
            cn.Close();

        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        vcdid = Convert.ToInt32(ViewState["vcdid"].ToString());
        cn.Open();
        qry = "update visa_country_details set vcid=" + DropDownList1.SelectedItem.Value + ",details='" + txt_details.Text + "' where vcdid="+vcdid;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Display_visacountry_details.aspx");
        cn.Close();
    }
}