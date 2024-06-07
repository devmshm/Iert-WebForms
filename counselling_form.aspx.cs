using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class counselling_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT UPPER(DATE)DATE FROM COUNSELLING_DATA", con))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        DataSet DS = new DataSet();
                        adp.Fill(DS);
                        ddldate.DataSource = DS.Tables[0];
                        ddldate.DataTextField = "DATE";
                        ddldate.DataValueField = "DATE";
                        ddldate.DataBind();
                        ddldate.Items.Insert(0, new ListItem("SELECT", "-1"));
                        ddldate.SelectedIndex = 0;
                    }
                }
            }

        }
    }

    protected void ddldate_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT UPPER(COURSE)COURSE FROM COUNSELLING_DATA WHERE DATE='" + ddldate.SelectedItem.Text.ToString() + "'", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataSet DS = new DataSet();
                    adp.Fill(DS);
                    ddlcourse.DataSource = DS.Tables[0];
                    ddlcourse.DataTextField = "COURSE";
                    ddlcourse.DataValueField = "COURSE";
                    ddlcourse.DataBind();
                    ddlcourse.Items.Insert(0, new ListItem("SELECT", "-1"));
                    ddlcourse.SelectedIndex = 0;
                }
            }
        }
    }

    protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT TIME FROM COUNSELLING_DATA WHERE DATE='" + ddldate.SelectedItem.Text.ToString() + "' AND COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "'", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataSet DS = new DataSet();
                    adp.Fill(DS);
                    ddlshift.DataSource = DS.Tables[0];
                    ddlshift.DataTextField = "TIME";
                    ddlshift.DataValueField = "TIME";
                    ddlshift.DataBind();
                    ddlshift.Items.Insert(0, new ListItem("SELECT", "-1"));
                    ddlshift.SelectedIndex = 0;
                }
            }
        }
    }

 

    protected void ddlshift_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT FINALMERIT,TOKENNO,DATE,TIME,REPORTING_TIME,PAYMENT.ADDEDDATE,COUNSELLING_DATA.CANDIDATE_PHOTO,COUNSELLING_DATA.CANDIDATE_SIGN,COUNSELLING_DATA.CANDIDATE_THUMB,COUNSELLING_DATA.[Application_no],[passwords],COUNSELLING_DATA.[Rollno],[EXAMCENTER],COUNSELLING_DATA.[course],[course_code],[First_name],[Middle_name],[Last_name],[CANDIDATENAME],[fathername],[Mother_name],COUNSELLING_DATA.[Gender],COUNSELLING_DATA.[DOB],[Religion],[employed],[posted],[incomescale],[domicile],[Nationality],COUNSELLING_DATA.[Category],COUNSELLING_DATA.[Sub_category],[caste],COUNSELLING_DATA.[ews],[Aadharno],[Mobile_no],[Email_id],CENTERDATA.[STATUS],CENTERDATA.[TRACKING_ID],[CENTER1],[centercode],[examdate],[Hpassed],[HPSTATE],[HCOLLEGE],[Hboard],[Hstream],[HSubjects],[Hyear],[Hmax_mark],[Hobt_marks],[IPASSED],[ICOLLEGE],[IPSTATE],[Iboard],[Istream],[ISubjects],[Iyear],[Imax_mark],[Iobt_marks],[GPASSED],[GPSTATE],[GCOLLEGE],[Gtype],[gbranch],[Gboard],[Gstream],[GSubjects],[Gyear],[Gmax_mark],[Gobt_marks],[dpstate],[dboard],[dcollege],[dbranch],[dstream],[dsubjects],[dyear],[dmax_marks],[dobt_marks]  FROM COUNSELLING_DATA   JOIN  CENTERDATA ON COUNSELLING_DATA.APPLICATION_NO=CENTERDATA.APPLICATION_NO  JOIN QUALIFICATION ON COUNSELLING_DATA.APPLICATION_NO=QUALIFICATION.APPLICATION_NO  JOIN PAYMENT ON COUNSELLING_DATA.APPLICATION_NO=PAYMENT.APPLICATIONNO AND PAYMENT.STATUS='SUCCESS' WHERE COUNSELLING_DATA.DATE='" + ddldate.SelectedItem.Text.ToString() + "' AND COUNSELLING_DATA.COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "' AND COUNSELLING_DATA.TIME='" + ddlshift.SelectedItem.Text.ToString() + "' ORDER BY TOKENNO ", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataTable Dt = new DataTable();
                    adp.Fill(Dt);
                    gdstudent.DataSource = Dt;
                    gdstudent.DataBind();

                }
            }
        }
    }
}