using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_master_tour_booking : System.Web.UI.Page
{
     SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    string uname;
    string email;
    string ttid;
    string tdid;
    //string uname;

    protected void Page_Load(object sender, EventArgs e)
    {
       try
        {
            if (!IsPostBack)
            {
                uname = Session["uname"].ToString();
                email = Session["email"].ToString();
                txt_email.Text = email;
                txt_uname.Text  = uname;
                ttid = Request.QueryString.Get("ttid");
                ViewState["ttid"] = Request.QueryString.Get("ttid");
                tdid = Request.QueryString.Get("tdid");
                ViewState["tdid"] = Request.QueryString.Get("tdid");
                txt_type.Text = ttid;
                txt_pname.Text = tdid;
                txt_mobno.Text = Session["Mobno"].ToString();

                cn.Open();
                qry = "select * from tour_type where ttid='" + ttid + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txt_type.Text = dr[1].ToString();
                }
                cn.Close();

                cn.Open();

                qry = "select * from tour_details where tdid='" + tdid + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txt_pname.Text = dr["pname"].ToString();
                    txt_price.Text = dr["price"].ToString();
                    Session["price"] =dr["price"].ToString();
                }
                cn.Close();
            }
         }
        catch (Exception ex)
        {
            Response.Redirect("Sign_in.aspx");
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        tdid = Request.QueryString.Get("tdid");
        cn.Open();
        qry = "select * from tour_details where tdid='" + tdid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txt_pname.Text = dr["pname"].ToString();
            txt_price.Text = dr["price"].ToString();
        }
        cn.Close();
        int amt;
        amt = Convert.ToInt32(txt_price.Text);
        int tot_person = Convert.ToInt32(DropDownList2.SelectedItem.Value);

        int per_person = amt / 2;

        if (tot_person > 2)
        {
            int new_amt = per_person * tot_person;
            amt = new_amt;
        }

        txt_price.Text = amt.ToString();

    }

    protected void btn_book_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into tour_book values('" + ViewState["ttid"].ToString() + "','" + ViewState["tdid"].ToString() + "','" + Session["uid"].ToString() + "','" + txt_uname.Text + "','" + txt_mobno.Text + "','" + txt_email.Text + "','" + txt_price.Text + "','" + DateTime.Now.Date + "','Pending')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        //MailMessage mail = new MailMessage();
        //string mailid = txtemail.Text;
        //mail.To.Add(mailid);
        //mail.From = new MailAddress("infotech.kakshi@gmail.com");
        //mail.Subject = "About Your Booking";
        //string Body = "<html> User Name : " + uname + " <br/> Booking Name : " + txtname.Text + "<br/> <table bordercolor='black' borderwidth=3 borderstyle='solid'> <tr> <td> <b> Mobile No: </b></td> <td>" + txtmobno.Text + "</td> </tr><tr> <td> <b> Email Id: </b></td> <td>" + txtemail.Text + "</td> </tr><tr> <td> <b> Arrival Date: </b></td> <td>" + txtadate.Text + "</td> </tr><tr> <td> <b> Departure Date: </b></td> <td>" + txtddate.Text + "</td> </tr><tr> <td> <b> Price: </b></td> <td>" + txtprice.Text + "</td> </tr> <tr> <td> <b> Date Of Booking: </b></td> <td>" + DateTime.Now.Date  + "</td> </tr><tr> <td><b> Status </b></td> <td> Pending </td> </tr></html>";
        //mail.Body = Body;
        //mail.IsBodyHtml = true;

        //SmtpClient smtp = new SmtpClient();

        ////  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
        ////  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


        //smtp.Host = "smtp.gmail.com";
        //smtp.Credentials = new System.Net.NetworkCredential("infotech.kakshi@gmail.com", "bhushan611");
        //smtp.Port = 587;  //465
        //smtp.EnableSsl = true;
        //smtp.Send(mail);
        Response.Redirect("Payment.aspx");
    }
}