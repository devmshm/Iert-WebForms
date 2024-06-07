using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class counselling_letter : System.Web.UI.Page
{
    protected int intPageSize = 0;
    // clsRegister objCls = new clsRegister();
    protected string TableHeader = string.Empty;
    protected int Noofrow = 0;
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
        if (Request.QueryString["PageSize"] != null)
            intPageSize = int.Parse(Request.QueryString["PageSize"].ToString());
        using (SqlConnection con = new SqlConnection(clsConnect.Connect))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT *FROM COUNSELLING_DATA WHERE DATE='" + ddldate.SelectedItem.Text.ToString() + "' AND COURSE='" + ddlcourse.SelectedItem.Text.ToString() + "' AND TIME='" + ddlshift.SelectedItem.Text.ToString() + "' ORDER BY TOKENNO ", con))
            {
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    DataTable Dt = new DataTable();
                    adp.Fill(Dt);

                    Noofrow = Dt.Rows.Count;
                    foreach (DataRow dr in Dt.Rows)
                    {
                        StringBuilder sbTableHeader = new StringBuilder();
                        sbTableHeader.AppendLine("<table style=\"page-break-after: always;border:solid 1px #000\">");
                        sbTableHeader.AppendLine("<thead>");
                        sbTableHeader.AppendLine("<tr><td style=\"text-align:center; font-weight:bold; font-size:14px;\" colspan=\"11\"> " +
                            "<img style=\"height:30px;\" src=\"favicon.png\"/><br/>" +
                            "IERT ENTRANCE EXAMINATION 2023 <br> CALL LIST  FOR &nbsp;" + dr["Course"].ToString().ToUpper() + " </td>");                                               
                        sbTableHeader.AppendLine("</tr></thead>");


                        TableHeader = sbTableHeader.ToString();
                        //<%# (Container.ItemIndex+1 ) % 10 == 0 ? "" : "<tr><td style='text-align:center;' colspan='8'>Page No.: "+((Container.ItemIndex + 1) / 10).ToString()+"</td></tr>"%>
                    }
                    gdvlist.DataSource = Dt;
                    gdvlist.DataBind();

                }
            }

        }
    }
}