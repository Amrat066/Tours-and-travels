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
    int eid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["eid"] = Convert.ToInt32(Request.QueryString.Get("eid"));
            eid = Convert.ToInt32(ViewState["eid"].ToString());
            cn.Open();
            qry = "select * from tour_exclusion where eid=" + eid ;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_exclusion .Text  = dr["exclusion"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        eid = Convert.ToInt32(ViewState["eid"].ToString());
        cn.Open();
        qry = "update tour_exclusion set tdid=" + DropDownList1.SelectedItem.Value + ",exclusion='" + txt_exclusion.Text + "' where eid=" +eid;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Display_tour_exclusion.aspx");
        cn.Close();
    }
}