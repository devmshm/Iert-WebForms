<%@ Page Language="C#" AutoEventWireup="true" CodeFile="makepay.aspx.cs" Inherits="makepay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css" />
    <link rel="stylesheet" href="../bower_components/morris.js/morris.css" />
    <link rel="stylesheet" href="../bower_components/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
    <link rel="stylesheet" href="../bower_components/bootstrap-daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
</head>


<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <div class="col-md-12" style="text-align: center">
                <img src="logo.jpg" alt="" class="img-responsive" style="margin-left: auto; margin-right: auto; height: 95px; width: 800px" />
               
            </div>
              </div>
            <br />
            <br />
            <div class="container">
                <div class="panel panel-info">
                <div class="panel-heading">
                    <h2>Make Payment</h2>
                </div>
                <div class="card-body" style="font-size: 16px">

                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-md-4 control-label">UGAT/PGAT</label>
                            <div class="col-md-4" style="font-size: 18px">
                                <asp:DropDownList ID="ddlcourse" Font-Size="16px" disabled="disabled" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="UGAT">UGAT/PGAT</asp:ListItem>                                   
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Course</label>
                            <div class="col-md-4" style="font-size: 20px">
                                <asp:Label ID="ddlsub" Font-Size="16px" disabled="disabled" runat="server" CssClass="form-control">                                 
                                </asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Roll No</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtroll" disabled="disabled" Font-Size="16px" runat="server"  CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Name</label>
                            <div class="col-md-4">
                                <asp:Label ID="txtname" Font-Size="16px" runat="server" disabled="disabled" CssClass="form-control"></asp:Label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Father Name</label>
                            <div class="col-md-4">
                                <asp:Label ID="txtfname" Font-Size="16px" runat="server" disabled="disabled" CssClass="form-control"></asp:Label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Fee Amount</label>
                            <div class="col-md-4">
                                <asp:Label ID="txtfee" Font-Size="16px" runat="server" disabled="disabled" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="panel-heading" style="height:50px">
                    <div class="form-group">
                        <div class="col-md-12" style="font-size: 16px">
                            <asp:Button CssClass="btn btn-danger pull-right" Font-Size="16px"  runat="server" ID="btnpay" Text="Proceed" OnClick="btnpay_Click"/>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            
      
        <br />
        <br />
        <div id="a">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.esm.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>

