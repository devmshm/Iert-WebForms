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

public partial class PostPgResponse : System.Web.UI.Page
{
    SabPaisaIntegration sabPaisaIntegration = new SabPaisaIntegration();

    protected void Page_Load(object sender, EventArgs e)
    {
        Dictionary<string, string> sabPaisaRespdict = new Dictionary<string, string>();
        string query = Request.Form["encResponse"].ToString();
        string authKey = "x0xzPnXsgTq0QqXx";
        string authIV = "oLA38cwT6IYNGqb3";
        sabPaisaRespdict = sabPaisaIntegration.subPaisaResponse(query, authIV, authKey);
        foreach (KeyValuePair<string, string> pair in sabPaisaRespdict)
        {
            divresponse.InnerHtml = divresponse.InnerHtml + " <br /> " + pair.Key.ToString() + "  -  " + pair.Value.ToString();

            if (pair.Key.ToString().ToUpper() == "STATUSCODE")
            {
                lblStatus.Text = pair.Value.ToString();
            }
            string OrderID = "";
            string amount = "";
            string order_status = "";
            string bank_ref_no = "";
            string tracking_id = "";
            string merchant_param1 = "";

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
                if (Key == "order_id")
                    OrderID = Value;
                if (Key2 == "status")
                    order_status = Value1;
                if (Key3 == "amount")
                    amount = Value2;

                if (Key4 == "bank_ref_no")
                    bank_ref_no = Value4;
                if (Key4 == "tracking_id")
                    tracking_id = Value4;
                if (Key5 == "merchant_param1")
                    merchant_param1 = Value5;

            }
        }
    }
}
