using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using com.awl.MerchantToolKit;

public partial class payment_meTrnSuccess : System.Web.UI.Page
{
    string key = "d46ee65a2e8902d6f9ae3b6242d51d64"; //"f9b5dc2a3d06068e0a843e6de8c7d39d";
    ResMsgDTO objResMsgDTO = new ResMsgDTO();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!IsPostBack)
            {
                //if (Session["ugatrollno"] != null)
                //{
                if (Request.Form["merchantResponse"] != null)
                {
                    string merchantResponse = Request.Form["merchantResponse"];
                    AWLMEAPI transact = new AWLMEAPI();
                    objResMsgDTO = transact.parseTrnResMsg(merchantResponse, key);

                    txtAdd1.Text = objResMsgDTO.AddField1;
                    txtAdd2.Text = objResMsgDTO.AddField2;
                    txtAdd3.Text = objResMsgDTO.AddField3;
                    // txtAdd4.Text = objResMsgDTO.AddField4;
                    //txtAdd5.Text = objResMsgDTO.AddField5;
                    //txtAdd6.Text = objResMsgDTO.AddField6;
                    //txtAdd7.Text = objResMsgDTO.AddField7;
                    //txtAdd8.Text = objResMsgDTO.AddField8;
                    //txtAdd9.Text = objResMsgDTO.AddField9;
                    //txtZcode.Text = objResMsgDTO.AuthZCode;
                    txtTransRefNo.Text = objResMsgDTO.PgMeTrnRefNo;
                    txtAmount.Text = (int.Parse((objResMsgDTO.TrnAmt).ToString()) / 100).ToString();                   
                    txtDateTime.Text = objResMsgDTO.TrnReqDate;
                    //txtRRN.Text = objResMsgDTO.Rrn;
                    txtOrderId.Text = objResMsgDTO.OrderId;
                    txtStatus.Text = objResMsgDTO.StatusCode;
                    txtDescription.Text = objResMsgDTO.StatusDesc;
                    txtResponseCode.Text = objResMsgDTO.ResponseCode;


                    using (SqlConnection con = new SqlConnection(connect.Connect))
                    {

                        string sql = "insert into  payment (roll,pstatus,refno,orderid) values(@rollno,@pstatus,@refno,@orderid)";
                        using (SqlCommand cmd = new SqlCommand(sql, con))
                        {
                            cmd.Parameters.AddWithValue("@rollno", txtAdd1.Text);
                            cmd.Parameters.AddWithValue("@pstatus", txtStatus.Text);
                            cmd.Parameters.AddWithValue("@refno", txtTransRefNo.Text);
                            cmd.Parameters.AddWithValue("@orderid", txtOrderId.Text);

                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                        string sql1 = "update  bcom set paymentstatus=@paymentstatus,refno=@refno,totalfee=@tfee where ugatrollno='" + txtAdd1.Text + "'";
                        using (SqlCommand cmd = new SqlCommand(sql1, con))
                        {
                            cmd.Parameters.AddWithValue("@paymentstatus", txtStatus.Text);
                            cmd.Parameters.AddWithValue("@refno", txtTransRefNo.Text);
                            cmd.Parameters.AddWithValue("@tfee", txtAmount.Text);

                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
                else
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "No Data Can be Displayed......Session is Null";
                }
            }
            else
            {
                Response.Redirect("~/paylog.aspx");
            }
            //}

        }
        catch (Exception ex)
        {
            ClsLogging.writefileE("Error:" + ex.Message, ClsLogging.LogType.Worldline);
            ClsLogging.writefileE("Trace:" + ex.StackTrace, ClsLogging.LogType.Worldline);
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "There Was Some Error Processing.....Please Check The Data you have Entered";
        }
    }
}