using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class viewstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT *FROM ANSWERDATA WHERE ROLLNO=LTRIM(RTRIM('" + txtroll.Text + "')) and dob='" + txtdob.Text + "'", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            foreach (DataRow dr in dt.Rows)
                            {
                                Session["ROLLNO"] = dr["ROLLNO"].ToString();
                                Response.Redirect("https://iertentrance.in/resultstatus.aspx");

                            }
                        }
                    }
                }
            }
        }
    }
}