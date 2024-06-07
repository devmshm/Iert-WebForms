using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class resultstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            dvfame.Visible = false;
            trmerit.Visible = false;
            dvmerit.Visible = false;
            if (Session["ROLLNO"].ToString() == null)
            {
                Response.Redirect("http://localhost:51216/viewstatus.aspx");
            }
            else
            {
                using (SqlConnection con = new SqlConnection(clsConnect.Connect))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT *FROM ANSWERDATA WHERE ROLLNO='" + Session["ROLLNO"].ToString() + "'", con))
                    {
                        using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            adp.Fill(dt);
                            foreach (DataRow dr in dt.Rows)
                            {
                                dvcourse.InnerHtml = dr["course"].ToString().ToUpper();
                                dvname.InnerHtml = dr["CANDIDATENAME"].ToString().ToUpper();
                                // dvname.InnerHtml = dr["FATHERNAME"].ToString().ToUpper();
                                dvroll.InnerHtml = dr["ROLLNO"].ToString().ToUpper();
                                dvstatus.InnerHtml = dr["REMARK"].ToString().ToUpper();
                                if (dr["FLAG"].ToString() == "0")
                                {
                                    dvfame.Visible = false;
                                    trmerit.Visible = false;
                                    dvmerit.Visible = false;
                                }
                                else if (dr["FLAG"].ToString() == "1")
                                {
                                    dvfame.Visible= true;
                                    trmerit.Visible = true;
                                    dvmerit.Visible = true;
                                    dvmerit.InnerHtml = dr["FINALMERIT"].ToString().ToUpper();
                                }
                            }
                        }
                    }
                }
            }

        }
    }
}