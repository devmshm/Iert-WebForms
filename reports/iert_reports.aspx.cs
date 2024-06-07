using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Runtime.Remoting.Contexts;
using System.Text.RegularExpressions;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reports_iert_reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *FROM REPORT_CATEGORY", con))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        DataSet DS = new DataSet();
                        adp.Fill(DS);

                        ddlcat.DataSource = DS.Tables[0];
                        ddlcat.DataTextField = "CATEGORY";
                        ddlcat.DataValueField = "CAT_ID";
                        ddlcat.DataBind();
                        ddlcat.Items.Insert(0, new ListItem("Select", "-1"));
                        ddlcat.SelectedIndex = 0;
                    }
                }
            }
            //ddlcat.Items.Insert(0, new ListItem("--Select--", "0"));
        }
    }

    //protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    using (SqlConnection con = new SqlConnection(clsConnect.Connect))
    //    {
    //        using (SqlCommand cmd = new SqlCommand("SELECT *FROM REPORT_TYPE WHERE CAT_ID='" + ddlcat.SelectedValue.ToString() + "'", con))
    //        {
    //            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
    //            {
    //                DataSet DS = new DataSet();
    //                adp.Fill(DS);

    //                ddltype.DataSource = DS.Tables[0];
    //                ddltype.DataTextField = "TYPE";
    //                ddltype.DataValueField = "TYPE_ID";
    //                ddltype.DataBind();
    //                ddltype.Items.Insert(0, new ListItem("Select", "-1"));
    //                ddltype.SelectedIndex = 0;
    //            }
    //        }
    //    }
    //}
    protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT COURSE,COURSE_CODE FROM BASIC_DETAILS ", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataSet DS = new DataSet();
                    adp.Fill(DS);

                    ddlcourse.DataSource = DS.Tables[0];
                    ddlcourse.DataTextField = "COURSE";
                    ddlcourse.DataValueField = "COURSE_CODE";
                    ddlcourse.DataBind();
                    ddlcourse.Items.Insert(0, new ListItem("Select", "-1"));
                    ddlcourse.SelectedIndex = 0;
                }
            }
        }
    }
    protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcat.SelectedItem.Text.ToString() == "Registration")
        {
            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT C,FIRST_NAME,APPLICATION_NO,COURSE,CATEGORY,PER_CITY  FROM(SELECT FIRST_NAME,BASIC_DETAILS.APPLICATION_NO AS APPLICATION_NO,COURSE,CATEGORY,PER_CITY FROM BASIC_DETAILS LEFT JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO WHERE  COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "')AS T1, (SELECT  COUNT(*)C FROM BASIC_DETAILS LEFT JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO WHERE  COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "')AS FT ORDER BY LTRIM(RTRIM(PER_CITY))desc ", con))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adp.Fill(dt);
                        foreach (DataRow dr in dt.Rows)
                        {
                            txtcount.Text = dr["c"].ToString();
                        }
                        gdvDetail.DataSource = dt;
                        gdvDetail.DataBind();
                        gdvDetail.Visible = true;
                        gdpayment.Visible = false;
                        gdcenter.Visible = false;
                        Label1.Visible = true; txtcount.Visible = true;
                    }
                }
            }
        }

        //else if (ddlcat.SelectedItem.Text.ToString() == "Registration")
        //{
        //    using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT c,first_name,Application_No,course,category,per_city  from(SELECT FIRST_NAME,BASIC_DETAILS.APPLICATION_NO AS APPLICATION_NO,COURSE,CATEGORY,PER_CITY FROM BASIC_DETAILS JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO  Where  course='" + ddlcourse.SelectedItem.Text.ToString() + "')as t1, (SELECT  count(*)c FROM BASIC_DETAILS  JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO  Where  course='" + ddlcourse.SelectedItem.Text.ToString() + "')as ft   as ft  order by per_city asc", con))
        //        {
        //            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
        //            {
        //                DataTable dt = new DataTable();
        //                adp.Fill(dt);
        //                foreach (DataRow dr in dt.Rows)
        //                {
        //                    txtcount.Text = dr["c"].ToString();
        //                }
        //                gdvDetail.DataSource = dt;
        //                gdvDetail.DataBind();
        //                gdvDetail.Visible = true;
        //                gdpayment.Visible = false;
        //            }
        //        }
        //    }
        //}
        //Form Submitted
        else if (ddlcat.SelectedItem.Text.ToString() == "Form Submitted")
        {
            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT C,FIRST_NAME,APPLICATION_NO,COURSE,CATEGORY,PER_CITY  FROM(SELECT FIRST_NAME,BASIC_DETAILS.APPLICATION_NO AS APPLICATION_NO,COURSE,CATEGORY,PER_CITY FROM BASIC_DETAILS JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO JOIN FINALSUBMISSION ON BASIC_DETAILS.APPLICATION_NO=FINALSUBMISSION.APPLICATION_NO WHERE  COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "' )AS T1, (SELECT  COUNT(*)C FROM BASIC_DETAILS JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO JOIN FINALSUBMISSION ON BASIC_DETAILS.APPLICATION_NO=FINALSUBMISSION.APPLICATION_NO WHERE  COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "')AS FT ORDER BY LTRIM(RTRIM(PER_CITY))", con))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adp.Fill(dt);
                        foreach (DataRow dr in dt.Rows)
                        {
                            txtcount.Text = dr["c"].ToString();
                        }

                        gdvDetail.DataSource = dt;
                        gdvDetail.DataBind();
                        gdvDetail.Visible = true;
                        gdpayment.Visible = false;
                        gdcenter.Visible = false;
                        Label1.Visible = true; txtcount.Visible = true;
                    }
                }
            }
        }
        //else if (ddlcat.SelectedItem.Text.ToString() == "Form Submitted" && ddltype.SelectedItem.Text.ToString() == "City Wise")
        //{
        //    using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT C,FIRST_NAME,APPLICATION_NO,COURSE,CATEGORY,PER_CITY  from(SELECT first_name,BASIC_DETAILS.application_no as application_no,course,category,per_city FROM BASIC_DETAILS JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO JOIN FINALSUBMISSION ON BASIC_DETAILS.APPLICATION_NO=FINALSUBMISSION.APPLICATION_NO Where  course='" + ddlcourse.SelectedItem.Text.ToString() + "' order by per_city)as t1, (SELECT  count(*)c FROM BASIC_DETAILS JOIN ADDRESS_DETAILS ON BASIC_DETAILS.APPLICATION_NO=ADDRESS_DETAILS.APPLICATION_NO JOIN FINALSUBMISSION ON BASIC_DETAILS.APPLICATION_NO=FINALSUBMISSION.APPLICATION_NO Where  course='" + ddlcourse.SelectedItem.Text.ToString() + "' order by per_city)as ft", con))
        //        {
        //            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
        //            {
        //                DataTable dt = new DataTable();
        //                adp.Fill(dt);
        //                gdvDetail.DataSource = dt;
        //                gdvDetail.DataBind();
        //            }
        //        }
        //    }
        //}
        //Payment
        else if (ddlcat.SelectedItem.Text.ToString() == "Payment")
        {
            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT C,FIRST_NAME,APPLICATION_NO,COURSE,CATEGORY,PAYMENTSTATUS  FROM(SELECT FIRST_NAME,BASIC_DETAILS.APPLICATION_NO AS APPLICATION_NO,COURSE,CATEGORY,IIF(STATUS='SUCCESS','SUCCESS','0') AS PAYMENTSTATUS  FROM BASIC_DETAILS JOIN PAYMENT ON BASIC_DETAILS.APPLICATION_NO=PAYMENT.APPLICATIONNO  WHERE STATUS='SUCCESS' AND  COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "')AS T1, (SELECT  COUNT(*)C FROM BASIC_DETAILS JOIN PAYMENT ON BASIC_DETAILS.APPLICATION_NO=PAYMENT.APPLICATIONNO WHERE STATUS='SUCCESS' AND  COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "')AS FT ", con))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adp.Fill(dt);
                        foreach (DataRow dr in dt.Rows)
                        {
                            txtcount.Text = dr["c"].ToString();
                        }

                        gdpayment.DataSource = dt;
                        gdpayment.DataBind();
                        gdpayment.Visible = true;
                        gdvDetail.Visible = false;
                        gdcenter.Visible = false;
                        Label1.Visible = true;
                        txtcount.Visible = true;
                    }
                }
            }
        }
        //Centre Count
        else if (ddlcat.SelectedItem.Text.ToString() == "Centre Count")
        {
            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COURSE,COURSE_CODE,CENTER,SUM(P1) 'FIRST_PREFERENCE',SUM(P2) 'SECOND_PREFERENCE',SUM(P3) 'THIRD_PREFERENCE',SUM(P4) 'FOURTH_PREFERENCE' FROM (\r\nSELECT COURSE,course_code,CENTER1 CENTER,COUNT(*) P1,0 P2,0 P3,0 P4 FROM BASIC_DETAILS INNER JOIN EXAMCENTER ON EXAMCENTER.APPLICATION_NO=BASIC_DETAILS.APPLICATION_NO\r\nGROUP BY COURSE,course_code,CENTER1 UNION ALL\r\n\r\nSELECT COURSE,course_code,CENTER2 CENTER,0 P1,COUNT(*) P2,0 P3,0 P4 FROM BASIC_DETAILS INNER JOIN EXAMCENTER ON EXAMCENTER.APPLICATION_NO=BASIC_DETAILS.APPLICATION_NO\r\nGROUP BY COURSE,course_code,CENTER2 UNION ALL\r\n\r\nSELECT COURSE,course_code,CENTER3 CENTER,0 P1,0 P2,COUNT(*) P3,0 P4 FROM BASIC_DETAILS INNER JOIN EXAMCENTER ON EXAMCENTER.APPLICATION_NO=BASIC_DETAILS.APPLICATION_NO\r\nGROUP BY COURSE,course_code,CENTER3 UNION ALL\r\n\r\nSELECT COURSE,course_code,CENTER4 CENTER,0 P1,0 P2,0 P3,COUNT(*) P4 FROM BASIC_DETAILS INNER JOIN EXAMCENTER ON EXAMCENTER.APPLICATION_NO=BASIC_DETAILS.APPLICATION_NO\r\nGROUP BY COURSE,course_code,CENTER4\r\n)X WHere x.course='"+ ddlcourse.SelectedItem.Text.ToString() + "' GROUP BY COURSE,COURSE_CODE,CENTER", con))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adp.Fill(dt);
                       

                        gdcenter.DataSource = dt;
                        gdcenter.DataBind();
                        gdcenter.Visible = true;
                        Label1.Visible = false;
                        gdpayment.Visible = false;
                        gdvDetail.Visible = false; txtcount.Visible = false;
                    }
                }
            }
        }
        

    }


}