using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net .Mail ;
using System.Data.SqlClient;

public partial class User_master_Default2 : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry, fname;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.Open();
            qry = "select * from user_master where uid='" + Session["uid"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_name.Text = dr["uname"].ToString();
                txt_email.Text = dr["email"].ToString();
                txt_pass.Text = dr["password"].ToString();
                txt_mobno.Text = dr["mobno"].ToString();
                ViewState["profile"] = dr["profile"].ToString();
                ViewState["uname"] = dr["uname"].ToString();
                ViewState["email"] = dr["email"].ToString();
                ViewState["password"] = dr["password"].ToString();
                ViewState["mobno"] = dr["mobno"].ToString();
               // Image1.ImageUrl = "~/user_master/profile/" + dr["profile"].ToString();
            }

            cn.Close();
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                string fname = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/User_master/profile/" + fname));
                Image1.ImageUrl = "~/User_master/profile/" + fname;
                cn.Open();
                qry = "update user_master set uname='" + txt_name.Text + "',email='" + txt_email.Text + "',password='" + txt_pass.Text + "',mobno='" + txt_mobno.Text + "', profile='" + fname + "' where uid=" + Session["uid"].ToString();
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();

                MailMessage mail = new MailMessage();
                string mailid = txt_email.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("travellersreview11@gmail.com");
                mail.Subject = "Change Profile";
                string Body = "Your Profile has been Updated Successfully";
                mail.Body = Body;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
                //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("travellersreview11@gmail.com", "Sunshine@9773");
                smtp.Port = 587;  //465
                smtp.EnableSsl = true;
                smtp.Send(mail);

                Session["uname"] = txt_name.Text; ;
                Session["email"] = txt_email.Text;
                Session["password"] =txt_pass .Text;
                Session["mobno"] = txt_mobno.Text;
                Session["profile"] =fname;
                Response.Redirect("profile.aspx");
            }
            else
            {
                Label1.Text = "please select an image";
            }
        }
        else
        {
            Label1.Text = "please select file";
        }
    }
}