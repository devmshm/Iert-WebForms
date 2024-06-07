using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml.Linq;

public partial class payment_updation_pay_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dvenable.Visible = false;
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT BASIC_DETAILS.APPLICATION_NO,FIRST_NAME,MIDDLE_NAME,LAST_NAME,MOBILE_NO,EMAIL_ID,PAYMENT.ADDEDDATE,PAYMENT.AMOUNT,STATUS,TRACKING_ID FROM BASIC_DETAILS JOIN PAYMENT ON PAYMENT.APPLICATIONNO=BASIC_DETAILS.APPLICATION_NO WHERE APPLICATIONNO='" + txtappno.Text + "'", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    gdstudent.DataSource = dt;
                    gdstudent.DataBind();
                    foreach (DataRow dr in dt.Rows)
                    {
                        dvenable.Visible = true;
                        txtappid.Text = dr["APPLICATION_NO"].ToString();
                        txtstatus.Text = "Success";
                    }

                }
            }
        }

    }

    protected void btnupdated_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO PAYMENT (APPLICATIONNO,ORDERID,AMOUNT,TRACKING_ID,STATUS) VALUES (@APPLICATIONNO,@ORDERID,@AMOUNT,@TRACKING_ID,@STATUS)"))
            {
                cmd.Parameters.AddWithValue("@APPLICATIONNO", txtappno.Text);
                cmd.Parameters.AddWithValue("@ORDERID", txtappno.Text);
                cmd.Parameters.AddWithValue("@AMOUNT", "1350");
                cmd.Parameters.AddWithValue("@TRACKING_ID", txttrck_id.Text);
                cmd.Parameters.AddWithValue("@STATUS", "Success");
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Updated');", true);
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT BASIC_DETAILS.APPLICATION_NO,FIRST_NAME,MIDDLE_NAME,LAST_NAME,MOBILE_NO,EMAIL_ID,PAYMENT.ADDEDDATE,PAYMENT.AMOUNT,STATUS,TRACKING_ID FROM BASIC_DETAILS JOIN PAYMENT ON PAYMENT.APPLICATIONNO=BASIC_DETAILS.APPLICATION_NO WHERE APPLICATIONNO='" + txtappno.Text + "'", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    gdstudent.DataSource = dt;
                    gdstudent.DataBind();
                    foreach (DataRow dr in dt.Rows)
                    {
                        dvenable.Visible = false;
                        txtappid.Text = dr["APPLICATION_NO"].ToString();
                        txtstatus.Text = "Success";
                    }

                }
            }
        }
    }
}
