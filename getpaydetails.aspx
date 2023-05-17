<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/candidate.master" AutoEventWireup="true" CodeFile="getpaydetails.aspx.cs" Inherits="getpaydetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        window.onload = function () {
            var d = new Date().getTime();
            document.getElementById("tid").value = d;
        };
    </script>
    <style>
        #tblpay td, th {
            border: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" name="customerData" method="post" action="request.aspx">
        <div style="margin-left: 30em; margin-right: auto">
            <table width="60%" height="100" border='1' style="text-align: center" id="tblpay">
                <tr style="visibility: hidden">
                    <td style="visibility: hidden">Parameter Name:</td>
                    <td style="visibility: hidden">Parameter Value:</td>
                </tr>
                <tr>
                    <td colspan="2" style="font-size: 20px; font-weight: bold">Applicant's Information
                        <hr />
                    </td>
                </tr>
                <tr style="visibility: hidden">
                    <td>TID	:</td>
                    <td>
                        <input type="text" name="tid" id="tid" readonly disabled="disabled" /></td>
                </tr>
                <tr>
                    <td>Application NO:</td>
                    <td>
                        <input type="text"  id="appid1" disabled="disabled" /></td>
                </tr>
				<tr>
                    <td>Amount</td>
                    <td>
                        <input type="text"  id="amount1" disabled="disabled" /></td>
                </tr>
				 <tr >
            <td>Currency</td>
            <td><input type="text" disabled="disabled"  value="INR"/></td>
         </tr>
                <tr style="visibility: hidden">
            <td>Amount</td>
            <td><input type="text" name="amount" value="1.00"/></td>
         </tr>
                 <tr style="visibility: hidden">
            <td>Currency</td>
            <td><input type="text" name="currency" value="INR"/></td>
         </tr>


                <tr style="visibility: hidden">
                    <td>Merchant Id</td>
                    <td>
                        <input type="text" name="merchant_id" id="merchant_id" value="2258344" /></td>
                </tr>
                <tr style="visibility: hidden">
                    <td>Order Id</td>
                    <td>
                        <input type="text" name="order_id" value="123654789" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr />
                        <input type="submit" value="Pay Now" class="btn btn-info btn-lg shadow" runat="server" />
                        <hr />
                    </td>
                </tr>
                <tr style="visibility: hidden">
                    <td>Redirect URL</td>
                    <td>
                        <input type="text" name="redirect_url" value="https://iertentrance.in/response.aspx" /></td>
                </tr>
                <tr style="visibility: hidden">
                    <td>Cancel URL</td>
                    <td>
                        <input type="text" name="cancel_url" value="https://iertentrance.in/response.aspx" /></td>
                </tr>

                
                 <tr style="visibility: hidden">
                    <td>Application NO:</td>
                    <td>
                        <input type="text" name="merchant_param1"  disabled="disabled" /></td>
                </tr>
               
            </table>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <script src="../plug/jquery/jquery.js"></script>
    <script src="../plug/jquery/jquery.cookie.js"></script>
    <script src="data_script/update_details.js"></script>
</asp:Content>

