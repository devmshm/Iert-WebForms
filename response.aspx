<%@ Page Language="C#" AutoEventWireup="true" CodeFile="response.aspx.cs" Inherits="response" %>

<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/widgets.css" rel="stylesheet" />
    <style type="text/css">
        table {
            border-collapse: collapse;
            border: 1px solid black;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            font-size: 16px;
        }
    </style>

</head>   
 
<body>
    <form id="form1" runat="server">
        <div style="background: #333; color: #eaeaea; padding: 10px;">
            <a href="#" style="color: white; font-size: 13px; float: left;"><b></b></a>
            <div style="clear: both;"></div>
        </div>
        <hr />
        <div style="margin-left: 30em; margin-right: auto">
            <table width="60%" height="100" border='1' style="text-align: center">
                <tr>
                    <td colspan="2" style="font-size: 20px; font-weight: bold">Fee Reciept</td>
                </tr>
                 <tr>
                    <td>Applicationid Id</td>
                    <td>
                        <asp:Label runat="server" ID="lblsess"></asp:Label></td>
                </tr>
                <tr style="visibility:hidden">
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
                    <td>Status</td>
                    <td>
                        <asp:Label runat="server" ID="lblstatus"></asp:Label></td>
                </tr>
				 <tr>
                    <td></td>
                    <td>
                        <asp:Label runat="server" ID="lbltra"></asp:Label></td>
                </tr>
               
                <tr>
                    <td>Amount</td>
                    <td>
                        <asp:Label runat="server" ID="lblamt"></asp:Label></td>
                </tr>
              
            </table>
            <br />
        </div>
    </form>
</body>
</html>
