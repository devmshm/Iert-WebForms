using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLog_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(clsConnect.Connect);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from basic_details where Application_no=@Application_no and passwords=@password", con);
        cmd.Parameters.AddWithValue("@Application_no", txtUserId.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtUPassword.Text.ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Session["Application_no"] = dt.Rows[i]["Application_no"].ToString();
                Response.Redirect("sbpayreq.aspx", false);
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Application No and Password')</script>");

        }
    }
}