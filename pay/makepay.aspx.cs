using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class makepay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            if ((Session["ugatrollno"] == null) || (Session["name"] == null) || (Session["fname"] == null))

            {

                Response.Redirect("~/paylog.aspx");
            }
            else if ((Session["ugatrollno"] != null))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT *FROM bcom where  UGATROLLNO='" + Session["ugatrollno"].ToString() + "'", new SqlConnection(clsConnect.Connect)))
                {
                 
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    //application userObj = new application();
                    foreach (DataRow dr in dt.Rows)
                    {
                        txtname.Text = Session["name"].ToString();
                        txtroll.Text = Session["ugatrollno"].ToString();
                        ddlsub.Text = dr["coursename"].ToString();
                        txtfname.Text = Session["fname"].ToString();
                        txtfee.Text = Session["fees"].ToString();
                    }
                }
            }
        }
    }



  
    protected void btnpay_Click(object sender, EventArgs e)
    {
        Session["ugatrollno"] = Session["ugatrollno"].ToString();
        Session["fees"]= Session["fees"].ToString();
        Session["name"] = Session["name"].ToString();
        Session["fname"] = Session["fname"].ToString();
        Response.Redirect("payment/metrnreq.aspx");
    }
}