<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/candidate.master" AutoEventWireup="true" CodeFile="reciept.aspx.cs" Inherits="reciept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-left: 30em; margin-right: auto">
        <table width="60%" height="100" border='1' style="text-align: center">
            <tr>
                <td colspan="2" style="font-size: 20px; font-weight: bold">Fee Reciept</td>
            </tr>
            <tr>
                <td>Applicationid No.</td>
                <td>
                    <asp:Label runat="server" ID="lblappid"></asp:Label></td>
            </tr>
            <tr>
                <td>Order Id</td>
                <td>
                    <asp:Label runat="server" ID="lbloid"></asp:Label></td>
            </tr>
            <tr>
                <td>Bank Reference No.</td>
                <td>
                    <asp:Label runat="server" ID="lblbank"></asp:Label></td>
            </tr>
            <tr>
                <td>Order Status</td>
                <td>
                    <asp:Label runat="server" ID="lblstatus"></asp:Label></td>
            </tr>

            <tr>
                <td>Amount</td>
                <td>
                    <asp:Label runat="server" ID="lblamt"></asp:Label></td>
            </tr>
            <tr style="visibility: hidden">
                <td></td>
                <td>
                    <asp:Label runat="server" ID="lbltra"></asp:Label></td>
            </tr>
			<tr style="padding:50px">
				<td colspan=2><a href="registration.aspx" class="btn btn-primary btn-lg shadow">Back to Registration Form</a></td>
			</tr>
        </table>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

