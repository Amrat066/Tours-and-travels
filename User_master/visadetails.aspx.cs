using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_master_visadetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\TRAVELS\manish\TOUR_TRAVELLES2\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            cn.Open();
            qry = "select * from visacountry";
            SqlDataAdapter dap = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            dap = new SqlDataAdapter(qry, cn);
            dap.Fill(ds);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "country";
            DropDownList1.DataValueField = "vcid";
            DropDownList1.DataBind();
            cn.Close();
            int vcid = Convert.ToInt32(DropDownList1.SelectedValue);
            cn.Close();
            cn.Open();
            qry = "select * from visacountry where vcid=" + vcid;
            cmd = new SqlCommand(qry,cn);
            dr =cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                country_flag.ImageUrl = "../visa/" + dr[2].ToString();
                lbltime.Text = dr[3].ToString();
            }
            cn.Close();
            cn.Open();
            qry = "select * from visa_country_details where vcid=" + vcid;
            dap = new SqlDataAdapter(qry, cn);
            dap.Fill(ds);
            ListView1.DataSource = ds.Tables[0];
            ListView1.DataBind();
            cn.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
        int vcid = Convert.ToInt32(DropDownList1.SelectedValue);
        cn.Open();
        qry = "select * from visacountry where vcid=" + vcid;
        cmd = new SqlCommand(qry,cn);
        dr =cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            country_flag.ImageUrl = "../visa/" + dr[2].ToString();
         
            lbltime.Text = dr[3].ToString();
        }
        cn.Close();
        cn.Open();
        qry = "select * from visa_country_details where vcid=" + vcid;
       
        SqlDataAdapter dap = new SqlDataAdapter(qry, cn);
        DataSet ds = new DataSet();
       
        dap = new SqlDataAdapter(qry, cn);
        dap.Fill(ds);
        ListView1.DataSource = ds.Tables[0];
        ListView1.DataBind();
    
     }
    
    
    
}