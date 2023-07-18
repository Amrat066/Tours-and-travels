using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class User_master_Sign_up : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.FileName;
            ViewState["fname"] = FileUpload1.FileName;
            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                FileUpload1.SaveAs(Server.MapPath("~/User_master/profile/" + fname));

                cn.Open();
                qry = "insert into user_master values('" + txt_uname.Text + "','" + txt_email.Text + "','" + txt_password.Text + "','" + txt_mobile.Text + "','" + fname + "')";
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
              
                MailMessage mail = new MailMessage();
                string mailid = txt_email.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("travellersreview11@gmail.com");
                mail.Subject = "Registration";
                string Body = "Thank You For Register Successfully to our Website";
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

                Response.Redirect("Sign_in.aspx");
             
            }
            else
            {
                Label1.Text = "please select an image file";
            }
        }
        else
        {
            Label1.Text = "please select file";
        }

    }
}