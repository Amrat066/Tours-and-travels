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
    int ttid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
             ViewState["ttid"] = Convert.ToInt32(Request.QueryString.Get("ttid"));
             ttid = Convert.ToInt32(ViewState["ttid"].ToString());
             cn.Open();
             qry = "select * from tour_type where ttid="+ttid;
             cmd = new SqlCommand(qry, cn);
             dr = cmd.ExecuteReader();
             if (dr.HasRows)
             {
                 dr.Read();
                 txt_ttype.Text = dr["tourtype"].ToString();

             }
             cn.Close();

        }


    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        ttid = Convert.ToInt32(ViewState["ttid"].ToString());
        cn.Open();
        qry = "update tour_type set tourtype='" + txt_ttype.Text + "' where ttid=" + ttid;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Display_tour_type.aspx");
        cn.Close();
    }
}