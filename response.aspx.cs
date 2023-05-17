using CCA.Util;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.IdentityModel.Protocols.WSTrust;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class response : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string workingKey = "C8029183AC9A46C59D10B93879BD45A0";//put in the 32bit alpha numeric key in the quotes provided here
        CCACrypto ccaCrypto = new CCACrypto();
        string encResponse = ccaCrypto.Decrypt(Request.Form["encResp"], workingKey);
        NameValueCollection Params = new NameValueCollection();
        string[] segments = encResponse.Split('&');
        foreach (string seg in segments)
        {
            string[] parts = seg.Split('=');
            if (parts.Length > 0)
            {
                string Key = parts[0].Trim();
                string Value = parts[1].Trim();
                Params.Add(Key, Value);
            }
        }

             for (int i = 0; i < Params.Count; i++)
        {
            Response.Write(Params.Keys[i] + " = " + Params[i] + "<br>");
        }
        string OrderID = "";
        string amount = "";
        string order_status = "";
        string bank_ref_no = "";
        string tracking_id = "";
        string merchant_param1 = "";
        foreach (string seg in segments)
        {
            string[] parts = seg.Split('=');
            if (parts.Length > 0)
            {
                string Key = parts[0].Trim();
                string Key2 = parts[0].Trim();
                string Value = parts[1].Trim();
                string Key3 = parts[0].Trim();
                string Key4 = parts[0].Trim();
                string Key5 = parts[0].Trim();
                string Value1 = parts[1].Trim();
                string Value2 = parts[1].Trim();
                string Value4 = parts[1].Trim();
                string Value5 = parts[1].Trim();
                if (Key == "order_id")
                    OrderID = Value;
                if (Key2 == "order_status")
                    order_status = Value1;
                if (Key3 == "amount")
                    amount = Value2;
                Params.Add(Key, Value);
                if (Key4 == "bank_ref_no")
                    bank_ref_no = Value4;
                if (Key4 == "tracking_id")
                    tracking_id = Value4;
                if (Key5 == "merchant_param1")
                    merchant_param1 = Value5;

                //lblamt.Text = amount;
                //lblbank.Text = bank_ref_no;
                //lblstatus.Text = order_status;
                //lbloid.Text = OrderID;
                //lblsess.Text = OrderID;

            }
        }
        if (order_status == "Success")
        {

            for (int i = 0; i < 3; i++)
            {
                lbloid.Text = OrderID;
                lblstatus.Text = order_status;
                lblbank.Text = bank_ref_no;
                lbltra.Text = tracking_id;

                using (SqlConnection con = new SqlConnection(clsConnect.Connect))
                {

                    string sql = "INSERT INTO PAYMENT (APPLICATIONNO,ORDERID,STATUS,AMOUNT,TRACKING_ID,BANK_REF_NO) VALUES(@ORDERID,@ORDERID,@STATUS,@AMOUNT,@TRACKING_ID,@BANK_REF_NO)";
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@APPLICATIONID", merchant_param1);
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
                Session["tracking_id"] = amount1;
                Session["order_id"] = order_id1;
                Session["bank_ref_no"] = bank_ref_no1;

                Response.Redirect("reciept.aspx");

                //Response.Write("Order ID : " +OrderID + "<br>" +"Order Status : "+ order_status+ "<br>"+"Amount : " + amount);
            }


        }
        else if (order_status != "Success")
        {
            for (int i = 0; i < 1; i++)
            {
                lbloid.Text = OrderID;
                lblstatus.Text = order_status;
                lblbank.Text = bank_ref_no;
                lbltra.Text = tracking_id;

                using (SqlConnection con = new SqlConnection(clsConnect.Connect))
                {

                    string sql = "INSERT INTO PAYMENT (APPLICATIONNO,ORDERID,STATUS,AMOUNT,TRACKING_ID,BANK_REF_NO) VALUES(@ORDERID,@ORDERID,@STATUS,@AMOUNT,@TRACKING_ID,@BANK_REF_NO)";
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@APPLICATIONID", merchant_param1);
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
                Session["tracking_id"] = amount1;
                Session["order_id"] = order_id1;
                Session["bank_ref_no"] = bank_ref_no1;

                Response.Redirect("reciept.aspx");

            }
        }

    }

}
