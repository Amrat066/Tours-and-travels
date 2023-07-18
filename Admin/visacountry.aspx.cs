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
    SqlCommand  cmd = new SqlCommand();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click1(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into visacountry values('" + txt_country.Text + "','" + FileUpload1.FileName + "','" + txt_days.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType =="image/jpeg")
            {
                string fname = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/visa/" + fname));
                Image1.ImageUrl = ("~/visa/" + fname);
            }
            else
            {
                Label1.Text = "please select an image";
            }
        }
        else
        {
            Label1.Text = "please select a file";
        }
        cn.Close();
    }
}