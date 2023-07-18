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
    int tiid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["tiid"] = Convert.ToInt32(Request.QueryString.Get("tiid"));
            tiid = Convert.ToInt32(ViewState["tiid"].ToString());
            cn.Open();
            qry = "select * from tour_itinerary where tiid=" + tiid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_days.Text = dr["day"].ToString();
                txt_desc.Text = dr["description"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        tiid = Convert.ToInt32(ViewState["tiid"].ToString());
        cn.Open();
        qry = "update tour_itinerary set tdid=" + DropDownList1.SelectedItem.Value + ",day='" + txt_days.Text + "',description='" + txt_desc.Text + "' where tiid=" + tiid;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Display_tour_itinerary.aspx");
        cn.Close();
    }
}