using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class counselling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dverror.Visible = false;
    }


    protected void btnview_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT *FROM COUNSELLING_DATA WHERE ROLLNO=LTRIM(RTRIM('" + txtroll.Text + "')) AND DOB='" + txtdob.Text + "'", con))
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
                                Response.Redirect("http://iertentrance.in/resultt.aspx");

                            }
                        }
                    }
                    else
                    {
                        dverror.Visible = true;
                        dverror.InnerHtml = "Invalid Roll No. OR Password...!!";
                    }
                }
            }
        }
    }
}