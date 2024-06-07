using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Activities.Expressions;

public partial class candidate_report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT BASIC_DETAILS.APPLICATION_NO,FIRST_NAME,MIDDLE_NAME,LAST_NAME,MOBILE_NO,EMAIL_ID,IIF(BASIC_DETAILS.ISUPDATED = 1, 'UPDATED', 'NOT UPDATED') 'BASIC DETAILS',IIF(ADDRESS_DETAILS.ISUPDATED = 1, 'UPDATED', 'NOT UPDATED') 'ADDRESS DETAILS',IIF(QUALIFICATION.ISUPDATE = 1, 'UPDATED', 'NOT UPDATED')QUALIFICATION,IIF(CANDIDATE_DOCUMENTS.ISPHOTOUPDATED = 1, 'UPDATED', 'NOT UPDATED') PHOTO,IIF(CANDIDATE_DOCUMENTS.ISSIGNUPDATED = 1, 'UPDATED', 'NOT UPDATED') 'SIGN',IIF(CANDIDATE_DOCUMENTS.ISTHUMBUPDATED = 1, 'UPDATED', 'NOT UPDATED')'THUMB',IIF(FINALSUBMISSION.ISSUBMITTED = 1, 'UPDATED', 'NOT UPDATED') FINALSUBMISSION FROM PAY_2024 LEFT JOIN ADDRESS_DETAILS ON ADDRESS_DETAILS.APPLICATION_NO = PAY_2024.[ORDER NO] LEFT JOIN QUALIFICATION ON QUALIFICATION.APPLICATION_NO = PAY_2024.[ORDER NO] LEFT JOIN CANDIDATE_DOCUMENTS ON CANDIDATE_DOCUMENTS.APPLICATION_NO = PAY_2024.[ORDER NO] LEFT JOIN FINALSUBMISSION ON FINALSUBMISSION.APPLICATION_NO = PAY_2024.[ORDER NO] LEFT JOIN BASIC_DETAILS ON PAY_2024.[ORDER NO] = BASIC_DETAILS.APPLICATION_NO order by ADDRESS_DETAILS.ISUPDATED ASC, QUALIFICATION.ISUPDATE ASC, CANDIDATE_DOCUMENTS.ISPHOTOUPDATED ASC, CANDIDATE_DOCUMENTS.ISSIGNUPDATED ASC, CANDIDATE_DOCUMENTS.ISTHUMBUPDATED ASC, FINALSUBMISSION.ISSUBMITTED ASC", con))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adp.Fill(dt);
                        gdstudent.DataSource = dt;
                        gdstudent.DataBind();
                    }
                }
            }
        }
    }
}