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
public partial class PostPgRequest : System.Web.UI.Page
{
    SabPaisaIntegration objsb = new SabPaisaIntegration();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SabPaisaRequest requestToGateway = new SabPaisaRequest();

           requestToGateway.clientCode = "LPSD1";
           requestToGateway.transUserName = "Abh789@sp";
           requestToGateway.transUserPassword = "P8c3WQ7ei";  
           requestToGateway.authKey = "x0xzPnXsgTq0QqXx";
           requestToGateway.authIV = "oLA38cwT6IYNGqb3";

           requestToGateway.payerName = "YUVRAJ MISHRA";
           requestToGateway.payerEmail = "yuvraj.mishra@sabpaisa.in";
           requestToGateway.payerMobile = "7004069540";
           requestToGateway.payerAddress = "Patna Bihar";

           requestToGateway.clientTxnId = objsb.randomTxnId().ToString();            //will be unique for every transaction
           requestToGateway.amount = "20";            
           requestToGateway.amountType = "INR";
           requestToGateway.channelId = "W";
           requestToGateway.mcc = "8795";
           requestToGateway.callbackUrl = "http://localhost:49171/PostPgResponse.aspx";
           // Extra Parameter you can use 20 extra parameters
           //requestToGateway.Class = "VI";
           //requestToGateway.Roll = "105";

            string sFinalurl = "";
            sFinalurl = objsb.forwardToSabPaisa(requestToGateway);

            string respString = "<html>" +
                 "<body>" +
                     "<form action=\"https://stage-securepay.sabpaisa.in/SabPaisa/sabPaisaInit?v=1\" method=\"post\" >" +
                     "<input type=\"hidden\" name=\"encData\" value=\"" + sFinalurl + "\" id=\"frm1\">" +
                     "<input type=\"hidden\" name=\"clientCode\" value=\""+ requestToGateway.clientCode +"\" id =\"frm2\">" +
                     "<input type=\"submit\" name=\"submit\" value=\"submit\" id=\"submitButton\">" +
                     "</ form >" +
                 "</body>" +
            "</html>";

            Response.Write(respString);


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}
