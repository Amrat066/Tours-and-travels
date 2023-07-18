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
    int tdid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["tdid"] = Convert.ToInt32(Request.QueryString.Get("tdid"));
            tdid= Convert.ToInt32(ViewState["tdid"].ToString());
            cn.Open();
            qry = "select * from Tour_details where tdid=" + tdid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_pname.Text = dr["pname"].ToString();
                txt_days.Text = dr["days"].ToString();
                txt_desc.Text =dr["description"].ToString();
                txt_price.Text = dr["price"].ToString();
                txt_discount.Text = dr["discount"].ToString();
                txt_location.Text = dr["location"].ToString();
                txt_time.Text = dr["best_time"].ToString();
                ViewState["fname"] = dr["image"].ToString();
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
                FileUpload1 .SaveAs (Server .MapPath ("~/image/"+fname));
                Image1.ImageUrl = "~/image/" + fname;
                tdid = Convert.ToInt32(ViewState["tdid"].ToString());
                cn.Open();
                qry = "update tour_details set ttid="+ DropDownList1.SelectedItem.Value  + ",pname='" + txt_pname.Text + "',image='" + FileUpload1.FileName + "',days='" + txt_days.Text + "',description='" + txt_desc.Text + "',price='"+txt_price .Text +"',discount='"+txt_discount .Text +"',location='"+txt_location .Text +"',best_time='"+txt_time .Text +"' where tdid=" + tdid;
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Display_tour_details.aspx");
                cn.Close();

            }
            else
            {
                Label1.Text = "please select an image";
            }
        }
        else 
        {
            tdid = Convert.ToInt32(ViewState["tdid"].ToString());
            cn.Open();
            qry = "update tour_details set ttid=" + DropDownList1.SelectedItem.Value + ",pname='" + txt_pname.Text + "',image='" + ViewState["fname"].ToString() + "',days='" + txt_days.Text + "',description='" + txt_desc.Text + "',price='" + txt_price.Text + "',discount='"+txt_discount.Text +"',location='" + txt_location.Text +"',best_time='"+txt_time .Text +"'  where tdid=" + tdid;
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Display_tour_details.aspx");
            cn.Close();
        }
            
    }
        
}