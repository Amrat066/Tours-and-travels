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
    int hid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["hid"] = Convert.ToInt32(Request.QueryString.Get("hid"));
            hid = Convert.ToInt32(ViewState["hid"].ToString());
            cn.Open();
            qry = "select * from hotel_details where hid=" + hid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_hname.Text = dr["hotel_name"].ToString();
                
                ViewState["fname"] = dr["hotel_image"].ToString();
                txt_location .Text = dr["location"].ToString();
                txt_htype.Text = dr["hotel_type"].ToString();
                txt_mobno.Text = dr["mobno"].ToString();
                txt_price.Text = dr["price"].ToString();
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
                FileUpload1.SaveAs(Server.MapPath("~/image/" + fname));
                Image1.ImageUrl = "~/hotelimage/" + fname;
                hid = Convert.ToInt32(ViewState["hid"].ToString());
                cn.Open();
                qry = "update hotel_details set tdid=" + DropDownList1.SelectedItem.Value + ",hotel_name='" + txt_hname.Text + "',hotel_image='" + FileUpload1.FileName + "',location='" + txt_location.Text + "',hotel_type='" + txt_htype.Text + "',mobno='"+txt_mobno .Text +"',price='"+txt_price .Text+"' where hid=" + hid;
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Display_hotel_details.aspx");
                cn.Close();

            }
            else
            {
                Label1.Text = "please select an image";
            }
        }
        else
        {
            hid = Convert.ToInt32(ViewState["hid"].ToString());
            cn.Open();
            qry = "update hotel_details set tdid=" + DropDownList1.SelectedItem.Value + ",hotel_name='" + txt_hname.Text + "',hotel_image='" + ViewState["fname"].ToString() + "',location='" + txt_location.Text + "',hotel_type='" + txt_htype.Text + "',mobno='"+txt_mobno .Text+"',price='"+txt_price .Text+"' where hid=" + hid;
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Display_hotel_details.aspx");
            cn.Close();
        }

    }
}