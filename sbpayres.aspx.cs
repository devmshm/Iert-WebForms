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
using SabPaisaDotNetIntregreation;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices;

public partial class sbpayres : System.Web.UI.Page
{
    SabPaisaIntegration sabPaisaIntegration = new SabPaisaIntegration();

    protected void Page_Load(object sender, EventArgs e)
    {

        string OrderID = "";
        string amount = "";
        string order_status = "";
        string bank_ref_no = "";
        string tracking_id = "";
        string merchant_param1 = "";

        Dictionary<string, string> sabPaisaRespdict = new Dictionary<string, string>();
        string query = Request.Form["encResponse"].ToString();
        string authKey = "jDHbFQPPqsnStdDT";
        string authIV = "IPUvRACFuxmZre4X";
        sabPaisaRespdict = sabPaisaIntegration.subPaisaResponse(query, authIV, authKey);
        foreach (KeyValuePair<string, string> pair in sabPaisaRespdict)
        {
            divresponse.InnerHtml = divresponse.InnerHtml + " <br /> " + pair.Key.ToString() + "  -  " + pair.Value.ToString();

            if (pair.Key.ToString().ToUpper() == "STATUSCODE")
            {
                lblStatus.Text = pair.Value.ToString();
            }
           
            string[] parts = pair.Key.Split('=');
            string[] parts1 = pair.Value.Split('=');
            if (parts.Length > 0 && parts1.Length > 0)
            {
                string Key = parts[0].Trim();
                string Key2 = parts[0].Trim();
                string Value = parts1[0].Trim();
                string Key3 = parts[0].Trim();
                string Key4 = parts[0].Trim();
                string Key5 = parts[0].Trim();
                string Value1 = parts1[0].Trim();
                string Value2 = parts1[0].Trim();
                string Value4 = parts1[0].Trim();
                string Value5 = parts1[0].Trim();
                if (Key == "udf2")
                    OrderID = Value;
                if (Key2 == "status")
                    order_status = Value1;
                if (Key3 == "amount")
                    amount = Value2;
                if (Key4 == "sabpaisaTxnId")
                    bank_ref_no = Value4;
                if (Key4 == "clientTxnId")
                    tracking_id = Value4;
            }
        }
        if (order_status == "success")
        {
            for (int i = 0; i < 3; i++)
            {
                //lbloid.Text = OrderID;
                //lblstatus.Text = order_status;
                //lblbank.Text = bank_ref_no;
                //lbltra.Text = tracking_id;

                using (SqlConnection con = new SqlConnection(clsConnect.Connect))
                {

                    string sql = "INSERT INTO PAYMENT (APPLICATIONNO,ORDERID,STATUS,AMOUNT,TRACKING_ID,BANK_REF_NO) VALUES(@ORDERID,@ORDERID,@STATUS,@AMOUNT,@TRACKING_ID,@BANK_REF_NO)";
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@APPLICATIONID", OrderID);
                        cmd.Parameters.AddWithValue("@ORDERID", OrderID);
                        cmd.Parameters.AddWithValue("@STATUS", order_status);
                        cmd.Parameters.AddWithValue("@AMOUNT", amount);
                        cmd.Parameters.AddWithValue("@TRACKING_ID", tracking_id);
                        cmd.Parameters.AddWithValue("@BANK_REF_NO", bank_ref_no);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                string APPLICATIONID = OrderID;
                string amount1 = amount;
                string status1 = order_status;
                string tracking_id1 = tracking_id;
                string order_id1 = OrderID;
                string bank_ref_no1 = bank_ref_no;

                Session["APPLICATIONID"] = OrderID;
                Session["amount"] = amount1;
                Session["status"] = status1;
                Session["tracking_id"] = tracking_id1;
                Session["order_id"] = order_id1;
                Session["bank_ref_no"] = bank_ref_no1;

                Response.Redirect("sb_payrec.aspx");

                //Response.Write("Order ID : " +OrderID + "<br>" +"Order Status : "+ order_status+ "<br>"+"Amount : " + amount);
            }
        }
        else if (order_status != "success")
        {
            for (int i = 0; i < 1; i++)
            {
                //lbloid.Text = OrderID;
                //lblstatus.Text = order_status;
                //lblbank.Text = bank_ref_no;
                //lbltra.Text = tracking_id;

                using (SqlConnection con = new SqlConnection(clsConnect.Connect))
                {

                    string sql = "INSERT INTO PAYMENT (APPLICATIONNO,ORDERID,STATUS,AMOUNT,TRACKING_ID,BANK_REF_NO) VALUES(@ORDERID,@ORDERID,@STATUS,@AMOUNT,@TRACKING_ID,@BANK_REF_NO)";
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@APPLICATIONID", OrderID);
                        cmd.Parameters.AddWithValue("@ORDERID", OrderID);
                        cmd.Parameters.AddWithValue("@STATUS", order_status);
                        cmd.Parameters.AddWithValue("@AMOUNT", amount);
                        cmd.Parameters.AddWithValue("@TRACKING_ID", tracking_id);
                        cmd.Parameters.AddWithValue("@BANK_REF_NO", bank_ref_no);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                string APPLICATIONID = OrderID;
                string amount1 = amount;
                string status1 = order_status;
                string tracking_id1 = tracking_id;
                string order_id1 = OrderID;
                string bank_ref_no1 = bank_ref_no;

                Session["APPLICATIONID"] = OrderID;
                Session["amount"] = amount1;
                Session["status"] = status1;
                Session["tracking_id"] = tracking_id1;
                Session["order_id"] = order_id1;
                Session["bank_ref_no"] = bank_ref_no1;
                Response.Redirect("sb_payrec.aspx");

            }
        }
    }

}