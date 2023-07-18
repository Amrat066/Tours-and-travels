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
    int iid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["iid"] = Convert.ToInt32(Request.QueryString.Get("iid"));
            iid = Convert.ToInt32(ViewState["iid"].ToString());
            cn.Open();
            qry = "select * from tour_inclusion where iid="+iid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_inclusion.Text = dr["inclusion"].ToString();
            }
            cn.Close();
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        iid = Convert.ToInt32(ViewState["iid"].ToString());
        cn.Open();
        qry = "update tour_inclusion set tdid=" + DropDownList1.SelectedItem.Value + ",inclusion='"+txt_inclusion .Text +"' where iid=" + iid;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Display_tour_inclusion.aspx");
        cn.Close();
    }
}