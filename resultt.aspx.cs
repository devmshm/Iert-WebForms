using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

public partial class resultt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {

            if (Session["ROLLNO"].ToString() == null)
            {
                Response.Redirect("http://localhost:63318/viewstatus.aspx");
            }
            else
            {
                using (SqlConnection con = new SqlConnection(clsConnect.Connect))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT *FROM COUNSELLING_DATA WHERE COUNSELLING_DATA.ROLLNO='" + Session["ROLLNO"].ToString() + "'", con))
                    {
                        using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            adp.Fill(dt);
                            foreach (DataRow dr in dt.Rows)
                            {
                                if (dr["REMARK"].ToString().ToUpper() == "QUALIFIED FOR COUNSELLING")
                                {
                                    dvcourse.InnerHtml = dr["course"].ToString().ToUpper();
                                    dvname.InnerHtml = dr["CANDIDATENAME"].ToString().ToUpper();
                                    dvfname.InnerHtml = dr["FATHERNAME"].ToString().ToUpper();
                                    dvaddname.InnerHtml = dr["PER_ADDRESS_LINE1"].ToString().ToUpper()+ " " + dr["PER_ADDRESS_LINE2"].ToString().ToUpper()+ " " + dr["PER_ADDRESS_LINE3"].ToString().ToUpper()+ ", "+dr["PER_CITY"].ToString().ToUpper()+ ", " + dr["PER_PINCODE"].ToString().ToUpper();
                                    dvroll.InnerHtml = dr["ROLLNO"].ToString().ToUpper();
                                    dvtoken.InnerHtml = dr["Tokenno"].ToString().ToUpper();
                                    dvmerit.InnerHtml = dr["FINALMERIT"].ToString().ToUpper();
                                    spdate.InnerHtml = dr["date"].ToString().ToUpper();
                                    spdate1.InnerHtml = dr["date"].ToString().ToUpper();
                                    sprefno.InnerHtml = dr["refer_no"].ToString().ToUpper();
                                    sptime.InnerHtml = dr["reporting_time"].ToString().ToUpper();
                                    dvphoto.Src = "https://iertentrance.in/photo/" + dr["CANDIDATE_PHOTO"].ToString().ToUpper();
                                    dvsign.Src = "https://iertentrance.in/photo/" + dr["CANDIDATE_SIGN"].ToString().ToUpper();
                                    dvthumb.Src = "https://iertentrance.in/photo/" + dr["CANDIDATE_THUMB"].ToString().ToUpper();
                                }
                                else
                                {
                                    Response.Redirect("https://iertentrance.in");

                                }

                            }
                        }
                    }
                }
            }

        }
    }
}