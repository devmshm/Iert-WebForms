<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostPgResponse.aspx.cs" Inherits="PostPgResponse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Status</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Status : <asp:Label ID="lblStatus" runat="server"></asp:Label></h3>
    
    <div id="divresponse" runat="server"></div>
    </div>
    </form>
</body>
</html>

