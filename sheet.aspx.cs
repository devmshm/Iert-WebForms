using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Diagnostics.PerformanceData;
using System.Activities.Expressions;
using System.Activities.Statements;
using System.Drawing.Printing;

public partial class admin_sheet : System.Web.UI.Page
{
    protected int intPageSize = 0;
    // clsRegister objCls = new clsRegister();
    protected string TableHeader = string.Empty;
    protected int Noofrow = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            //ddlpost_SelectedIndexChanged();
            using (SqlConnection con = new SqlConnection(clsConnect.Connect))
            {
                using (SqlCommand cmd = new SqlCommand("select distinct examcenter,cast(centercode as varchar),centercode from centerdata order by cast(centercode as varchar) asc", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    ddlcenter.DataSource = cmd.ExecuteReader();
                    ddlcenter.DataTextField = "examcenter";
                    ddlcenter.DataValueField = "examcenter";
                    ddlcenter.DataBind();
                    con.Close();
                }
            }
            ddlcenter.Items.Insert(0, new ListItem("--Select center--", "0"));
        }


    }



    protected void ddlpost_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Request.QueryString["PageSize"] != null)
            intPageSize = int.Parse(Request.QueryString["PageSize"].ToString());

        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlDataAdapter adp = new SqlDataAdapter("SELECT  [#],CENTERCODE,EXAMDATE,CENTERDATA.[APPLICATION_NO],DOB,CANDIDATE_PHOTO,CANDIDATE_SIGN," +
                "CANDIDATE_THUMB,[ROLLNO],[EXAMCENTER], CENTERDATA.[COURSE], CENTERDATA.[COURSE_CODE],[FULLNAME]," +
                " CENTERDATA.[FATHER_NAME], CENTERDATA.[MOTHER_NAME], CENTERDATA.[GENDER]," +
                "CENTERDATA.[CATEGORY], CENTERDATA.[SUB_CATEGORY], CENTERDATA.[CASTE], CENTERDATA.[EWS]," +
                "(PER_ADDRESS_LINE1 + ' ' + PER_ADDRESS_LINE2 + ' ' + PER_ADDRESS_LINE3 + ' ' + PER_CITY + ' ' + PER_PINCODE) AS ADDRESS1 FROM[CENTERDATA] JOIN BASIC_DETAILS ON CENTERDATA.APPLICATION_NO = BASIC_DETAILS.APPLICATION_NO LEFT JOIN ADDRESS_DETAILS ON CENTERDATA.APPLICATION_NO = ADDRESS_DETAILS.APPLICATION_NO LEFT JOIN CANDIDATE_DOCUMENTS ON CENTERDATA.APPLICATION_NO = CANDIDATE_DOCUMENTS.APPLICATION_NO WHERE examcenter='" + ddlcenter.SelectedItem.Text.ToString() + "' and CENTERDATA.[COURSE_CODE]=1 order by ROLLNO asc", con))
            {
                Label datee = new Label();
                datee.BackColor = System.Drawing.Color.Black;
                datee.BorderStyle = BorderStyle.Solid;
                datee.BorderWidth = 1;
                this.Controls.Add(datee);

                DataTable ds = new DataTable();
                adp.Fill(ds);
                Noofrow = ds.Rows.Count;
                foreach (DataRow dr in ds.Rows)
                {

                    //    datee.Text = dr["times"].ToString();
                    //    dr["times"].ToString();


                    //}
                    StringBuilder sbTableHeader = new StringBuilder();
                    sbTableHeader.AppendLine("<table style=\"page-break-after: always;border:solid 1px #000\">");
                    sbTableHeader.AppendLine("<thead>");
                    sbTableHeader.AppendLine("<tr>");
                    sbTableHeader.AppendLine("<td style=\"text-align:center; font-weight:bold; font-size:12px;\" colspan=\"7\"> " +
                        "<img style=\"height:30px;\" src=\"favicon.png\"/><br/>" +
                        "INSTITUTE OF ENGINEERING AND RURAL TECHNOLOGY (IERT) <br> ENTRANCE EXAMINATION 2023</td>");
                    sbTableHeader.AppendLine("<tr><td style=\"text-align:center;font-size: 12px;\" colspan=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + dr["course"].ToString() +"</td><td style=\"text-align:right\">Room No :  <tb style=\"border: solid 1px #000; font-size: 17px;width:50px;height:30px color: white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tb></td></tr>" +
                        "</tr><tr><td style=\"text-align:left;font-size: 12px;\" colspan=\"7\"><span style=\"text-align:center;font-weight:bold;\">Center :</span>" + dr["EXAMCENTER"] + "</td></tr>" +
                        "<tr><td style=\"text-align:left; font-size: 11px;\" colspan=\"2\">" +
                        "<strong> Exam Date - </strong>03/07/2023</td>" +
                        "<td style=\"text-align:center;\" colspan =\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u style=\"font-size: 12px;font-weight:bold;text-align:center;\">ATTENDANCE CUM VERIFICATION SHEET-2023</u></td>" +
                        "<td style=\"text-align:right;font-size:11px;\" colspan=\"2\">" +
                        "<strong>Exam time -10:00 A.M TO 1:00 P.M</strong> </td>" +
                        "</tr>");
                    sbTableHeader.AppendLine("<tr><td style=\"text-align:left;font-size:12px;border-bottom:solid 1px #000;\" colspan=\"7\">" +
                        "<strong> </strong> </td></tr> ");
                    //sbTableHeader.AppendLine("</tr>");
                    //sbTableHeader.AppendLine("<tr>");
                    //sbTableHeader.AppendLine("<td style=\"text-align: left;font-weight:bold;font-size:12px;\" colspan=\"3\">");
                    //sbTableHeader.AppendLine("<strong></strong>");
                    //sbTableHeader.AppendLine("</td>");
                    //sbTableHeader.AppendLine("<td style=\"font-weight:bold;font-size:12px; text-align: right;\" colspan=\"3\">");
                    //sbTableHeader.AppendLine("AU Non-Teaching Post Verification Sheet");
                    //sbTableHeader.AppendLine("</td>");
                    //sbTableHeader.AppendLine("<td style=\"font-size:12px; margin-left:10px;\" colspan=\"2\">");
                    //sbTableHeader.AppendLine("<strong style=\" margin-left:45px;\">Exam Date-</strong> 6/ 11/ 2022");
                    //// sbTableHeader.Append(datee);
                    //sbTableHeader.AppendLine("</td>");
                    //sbTableHeader.AppendLine("</tr>");
                    //sbTableHeader.AppendLine("<tr>");
                    //sbTableHeader.AppendLine("<td style=\"text-align: left;font-size:12px;\" colspan=\"6\">");
                    //sbTableHeader.AppendLine("<strong></strong>");
                    //sbTableHeader.AppendLine("</td>");
                    //sbTableHeader.AppendLine("<td style=\"text-align:center;font-size:12px;\" colspan=\"2\">");
                    //sbTableHeader.AppendLine("<strong  style=\" margin-left:20px;\">Exam Time-</strong> 12:00 PM TO 2:00 PM");
                    //sbTableHeader.AppendLine("</td>");

                    //sbTableHeader.AppendLine("</tr>");
                    //sbTableHeader.AppendLine("<tr>");
                    //sbTableHeader.AppendLine("<td style=\"text-align: left;border-bottom:solid 1px #000;font-size:11px;text-align:center;\" colspan=\"8\">");
                    ////sbTableHeader.AppendLine("<strong>FOR ESSAY COPY USE</strong>");
                    //sbTableHeader.AppendLine("</td>");
                    //sbTableHeader.AppendLine("</tr>");
                    sbTableHeader.AppendLine("</thead>");


                    TableHeader = sbTableHeader.ToString();
                    //<%# (Container.ItemIndex+1 ) % 10 == 0 ? "" : "<tr><td style='text-align:center;' colspan='8'>Page No.: "+((Container.ItemIndex + 1) / 10).ToString()+"</td></tr>"%>
                }
                rprtSheet.DataSource = ds;/* objCls.SelectCandidate("", 6);*/
                rprtSheet.DataBind();
            }
        }
    }

    protected void ddlcenter_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
