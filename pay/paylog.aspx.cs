using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paylog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dvmessage.Visible = false;
    }

    protected void btnlog_Click(object sender, EventArgs e)
    {
        using (SqlDataAdapter da = new SqlDataAdapter("SELECT *FROM bcom where  UGATROLLNO='" + txtroll.Text + "' and dob='" + txtname.Text + "'", new SqlConnection(clsConnect.Connect)))
        {

            DataTable dt = new DataTable();
            da.Fill(dt);
          
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Session["ugatrollno"] = dt.Rows[i]["ugatrollno"].ToString();
                Session["fees"] = dt.Rows[i]["fees"].ToString();
                Session["name"] = dt.Rows[i]["name"].ToString();
                Session["fname"] = dt.Rows[i]["fname"].ToString();
                if (dt.Rows[i]["paymentstatus"].ToString() == "S") {
                    dvmessage.Visible = true;
                     dvmessage.InnerHtml="You've Already Paid Your Fee.";
                }
                else
                {
                    Response.Redirect("~/makepay.aspx");
                }
               
                // Session["org"] = dt.Rows[i]["organ"].ToString();

                //if (dt.Rows[i]["flag2"].ToString() == "1" && dt.Rows[i]["flag"].ToString() == "1")
                //{

                //}

            }
        }

    }
}