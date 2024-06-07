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

public partial class sbpayreq : System.Web.UI.Page
{
    SabPaisaIntegration objsb = new SabPaisaIntegration();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Application_no"].ToString() == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(clsConnect.Connect);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM BASIC_DETAILS WHERE APPLICATION_NO='" + Session["Application_no"].ToString() + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {
                        SabPaisaRequest requestToGateway = new SabPaisaRequest();
                        requestToGateway.clientCode = "IERTA";
                        requestToGateway.transUserName = "Ami878@sp";
                        requestToGateway.transUserPassword = "O7vz33fND";
                        requestToGateway.authKey = "jDHbFQPPqsnStdDT";
                        requestToGateway.authIV = "IPUvRACFuxmZre4X";
                        requestToGateway.payerName = dr["FIRST_NAME"].ToString();//"YUVRAJ MISHRA";
                        requestToGateway.payerEmail = dr["EMAIL_ID"].ToString();//"yuvraj.mishra@sabpaisa.in";
                        requestToGateway.payerMobile = dr["MOBILE_NO"].ToString(); //"7004069540";
                        requestToGateway.payerAddress = "";//"Patna Bihar";
                        requestToGateway.clientTxnId = objsb.randomTxnId().ToString();//will be unique for every transaction
                        requestToGateway.amount = "1";
                        requestToGateway.amountType = "INR";
                        requestToGateway.channelId = "W";
                        requestToGateway.mcc = "8795";
                        requestToGateway.callbackUrl = "http://localhost:49171/sbpayres.aspx";
                        // Extra Parameter you can use 20 extra parameters
                        requestToGateway.Roll = dr["APPLICATION_NO"].ToString(); ;
                        requestToGateway.Class = "";
                        string sFinalurl = "";
                        sFinalurl = objsb.forwardToSabPaisa(requestToGateway);
                        string respString = "<section class=\"w3l-top-menu-1\">\r\n<div class=\"top-hd\">\r\n<div class=\"container\">\r\n<header class=\"row top-menu-top\">\r\n<div class=\"accounts col-md-9 col-6\">\r\n<li class=\"top_li\"><span class=\"fa fa-phone\"></span><a href=\"tel:+142 5897555\">Technical Helpline : &nbsp;8601111522 (11:00 A.M to 5:00 P.M)</a> </li>\r\n<li class=\"top_li1\"><span class=\"fa fa-envelope-o\"></span><a href=\"mailto:helpdesk@iertentrance.in\" class=\"mail\">helpdesk@iertentrance.in</a></li>\r\n</div>\r\n\r\n</section>\r\n<section>\r\n<div class=\"container\">\r\n<div>\r\n<div class=\"row\" style=\"padding: 8px\">\r\n<div class=\"col-md-1 col-xs-12 col-lg-1 col-sm-12\">\r\n<img src=\"../favicon.png\" height=\"90px\" />\r\n</div>\r\n<div class=\"col-md-11\" style=\"text-align: center\">\r\n<p style=\"font-size: 18px\">\r\n<span style=\"font-size: 28px; color: forestgreen; text-align: center\">Institute of Engineering and Rural Technology, Prayagraj</span>\r\n<br />\r\n26, Chaitham Lines,  Prayagraj, Uttar Pradesh 211002\r\n</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"w3l-bootstrap-header\">\r\n<nav class=\"navbar shadow navbar-expand-lg bg-dark navbar-dark py-lg-2 py-2\">\r\n<div class=\"container\">\r\n<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\r\naria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n<span class=\"navbar-toggler-icon fa fa-bars\"></span>\r\n</button>\r\n\r\n<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n<ul class=\"navbar-nav mx-auto\">\r\n<li class=\"nav-item\">\r\n<a class=\"nav-link\" href=\"index.aspx\"  style=\"color: white\">Home</a>\r\n</li>\r\n<li class=\"nav-item\">\r\n<a class=\"nav-link\" href=\"https://iertentrance.in/about.aspx\" style=\"color: white\">About Institute</a>\r\n</li>\r\n<li class=\"nav-item\">\r\n<a class=\"nav-link\" href=\"https://iertentrance.in/admission.aspx\"  style=\"color: white\">Admission</a>\r\n</li>\r\n\r\n<li class=\"nav-item\">\r\n<a class=\"nav-link\" href=\"hta.pdf\"  style=\"color: white\">How To Apply</a>\r\n</li>\r\n<li class=\"nav-item\">\r\n<a class=\"nav-link\" href=\"https://iertentrance.in/contact.aspx\" style=\"color: white\">Contact Us</a>\r\n</li>\r\n</ul>\r\n<div class=\"navbar-nav mx-auto pull-right\" style=\"vertical-align: middle\" id=\"app\">\r\n<div class=\"nav-item\">\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</nav>\r\n<br />\r\n</section>" +
                            "<form action=\"https://securepay.sabpaisa.in/SabPaisa/sabPaisaInit?v=1\" method=\"post\" >" +
                                 "<div class=\"container\">" +
                                        "<div class=\"col-md- mx-5\">" +
                                            "<div class=\"card shadow nav-border\">" +
                                                 "<div class=\"card-header bg-info\">" +
                                                        "Payment Details" +
                                                 "</div>" +
                                                 "<div class=\"card-body\">" +
                                                    "<div class=\"form-horizontal\">" +
                                                        "<div class=\"mb-3\">" +
                                                        "<label class=\"control-label\">Application No.</label>" +
                                                        "<label class=\"form-control\" Text=\"'" + dr["APPLICATION_NO"].ToString() + "'\" ID=\"lblappno\" runat=\"server\">"+dr["APPLICATION_NO"].ToString() +
                                                        "</label>" +
                                                    "</div>" +
                                                    "<div class=\"mb-3\">" +
                                                     "<label class=\"control-label\">Name</label>" +
                                                      "<label class=\"form-control\"  ID=\"lblname\" runat=\"server\">" + dr["FIRST_NAME"].ToString() + ' ' + dr["MIDDLE_NAME"].ToString() + ' ' + dr["LAST_NAME"].ToString()+
                                                      "</label>" +
                                                    "</div>" +
                                                    "<div class=\"mb-3\">" +
                                                        "<label class=\"control-label\">Email Id</label>" +
                                                        "<label class=\"form-control\" ID=\"lblemail\"  runat=\"server\">" + dr["EMAIL_ID"].ToString() +
                                                        "</label>" +
                                                    "</div>" +
                                                    "<div class=\"mb-3\">" +
                                                        "<label class=\"control-label\">Mobile No</label>" +
                                                        "<label class=\"form-control\" ID=\"lblphone\"  runat=\"server\">" + dr["MOBILE_NO"].ToString() +
                                                        "</label>" +
                                                    "</div>" +
                                                    "<div class=\"mb-3\">" +
                                                        "<label class=\"control-label\">Fee</label>" +
                                                        "<label class=\"form-control\" ID=\"lblamount\"  runat=\"server\">₹ 1350 /-" +
                                                        "</label>" +
                                                    "</div>" +                                       
                                               "</div>" +
                                            "</div>" +
                                                "<input type=\"hidden\" name=\"encData\" value=\"" + sFinalurl + "\" id=\"frm1\">" +
                                                "<input type=\"hidden\" name=\"clientCode\" value=\"" + requestToGateway.clientCode + "\" id =\"frm2\">" +
                                                "<div class=\"card-footer\">" +
                                                    "<div style=\"text-align:center\" class=\"col-md-12\">" +
                                                        "<input type=\"submit\" name=\"submit\" class=\"col-md-12 btn btn-primary\" value=\"Pay Now\" id=\"submitButton\">" +
                                                     "</div> " + 
                                                 "</div> " + 
                                            "</div> " +
                                         " </div>" +
                                      "</div>" + 
                              "</form><hr/><br/>";

                        Response.Write(respString);
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
    }
}