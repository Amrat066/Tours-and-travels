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
    int igid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["igid"] = Convert.ToInt32(Request.QueryString.Get("igid"));
            igid  = Convert.ToInt32(ViewState["igid"].ToString());
            cn.Open();
            qry = "select * from image_gallary where igid=" + igid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                
                ViewState["fname"] = dr["tour_image"].ToString();
                //  DropDownList1.SelectedItem = dr[""].ToString();
            }
            cn.Close();

        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
         if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType =="image/jpeg")
            {
                string fname = FileUpload1.FileName;
                FileUpload1 .SaveAs (Server .MapPath ("~/timages/"+fname));
                Image1.ImageUrl = "~/timages/" + fname;
                igid  = Convert.ToInt32(ViewState["igid"].ToString());
                cn.Open();
                qry = "update image_gallary set tdid="+ DropDownList1.SelectedItem.Value  + ",tour_image='" + FileUpload1.FileName + "'where igid="+igid;
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Display_image_gallary.aspx");
                cn.Close();

            }
            else
            {
                Label1.Text = "please select an image";
            }
        }
        else 
        {
            igid = Convert.ToInt32(ViewState["igid"].ToString());
            cn.Open();
            qry = "update image_gallary set tdid=" + DropDownList1.SelectedItem.Value + ",tour_image='" + ViewState["fname"].ToString() + "'where igid=" + igid;
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Display_image_gallary.aspx");
            cn.Close();

        }
            
    
    }
}