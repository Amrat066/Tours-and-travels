using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class User_master_forgotten_password : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select *from user_master where email='" + txt_email.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            //dr.Read();
            //string pass = dr["pass"].ToString();
            Random rd = new Random();
            string pass = rd.Next(999,9999).ToString();

            MailMessage mail = new MailMessage();
            mail.To.Add(txt_email.Text);
            mail.From = new MailAddress("travellersreview11@gmail.com");
            mail.Subject = "forgot password";
            string Body = "<h1>your password is:"+pass+ "</h1>";

            mail.Body = Body;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("travellersreview11@gmail.com", "Sunshine@9773");
            smtp.Port = 587;//465
            smtp.EnableSsl = true;
            smtp.Send(mail);
            cn.Close();
            cn.Open();
            qry ="update user_master set password='"+pass+"' where email='"+txt_email .Text +"'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Sign_in.aspx");
        }
    }
}