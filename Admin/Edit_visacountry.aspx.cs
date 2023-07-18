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
    int vcid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["vcid"] = Convert.ToInt32(Request.QueryString.Get("vcid"));
            vcid = Convert.ToInt32(ViewState["vcid"].ToString());
            cn.Open();
            qry = "select * from visacountry where vcid="+vcid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_country.Text = dr["country"].ToString();
                ViewState["fname"] = dr["image"].ToString();
                txt_days.Text = dr["days"].ToString();
                //  DropDownList1.SelectedItem = dr[""].ToString();
            }
            cn.Close();

        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                string fname = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/visa/" + fname));
                Image1.ImageUrl = "~/visa/" + fname;
                vcid= Convert.ToInt32(ViewState["vcid"].ToString());
                cn.Open();
                qry = "update visacountry set country='" +txt_country.Text+ "',image='" + FileUpload1.FileName + "',days='"+txt_days .Text +"' where vcid="+vcid;
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Display_visacountry.aspx");
                cn.Close();

            }
            else
            {
                Label1.Text = "please select an image";
            }
        }
        else
        {
            vcid = Convert.ToInt32(ViewState["vcid"].ToString());
            cn.Open();
            qry = "update visacountry set country='" +txt_country.Text + "',image='"+ ViewState["fname"].ToString()+ "',days='" + txt_days.Text + "' where vcid=" + vcid;
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Display_visacountry.aspx");
            cn.Close();

        }
            
    }
}