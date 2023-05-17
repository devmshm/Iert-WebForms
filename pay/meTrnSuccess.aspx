<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meTrnSuccess.aspx.cs" Inherits="payment_meTrnSuccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
                <br />
                <br />
            </div>
            <div>
            </div>

            <div class="card" style="text-align: center; font-size: 14px">
                <div class="card-header">
                    <h2>Transaction Status</h2>
                </div>
                <div class="card-body">
                    <div class="table table-responsive">
                        <table class="table table-bordered" style="text-align: justify">
                            <tr>
                                <td>
                                    <asp:Label ID="lblTransRefNo" runat="server">Transaction Ref No.:</asp:Label></td>
                                <td>
                                    <asp:Label ID="txtTransRefNo" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblOrderId" runat="server">Order ID:</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtOrderId" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblResponseCode" runat="server">Response Code:</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtResponseCode" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblAmount" runat="server">Transaction Amount</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtAmount" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblTrnDateTime" runat="server">Transaction Date & Time:</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtDateTime" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblStatus" runat="server">Transaction Status:</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtStatus" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblDescription" runat="server">Status Description:</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtDescription" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 16.66%;visibility:hidden">
                                    <asp:Label ID="lblZcode" runat="server" Width="150">AuthZCode:</asp:Label>
                                </td>
                                <td style="visibility:hidden">
                                    <asp:Label ID="txtZcode" runat="server" Width="200"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblAdd1" runat="server">Roll No</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtAdd1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="visibility:hidden">
                                <td>
                                    <asp:Label ID="lblAdd2" runat="server">Course</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtAdd2" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="visibility:hidden">
                                <td>
                                    <asp:Label ID="lblAdd3" runat="server">Seat</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="txtAdd3" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>


                    <%--<table style="width: 100%">
                        <tr>
                            <td style="width: 10%; height: 10px"></td>
                            <td style="width: 16.66%"></td>
                            <td style="width: 16.66%"></td>

                            <td style="width: 10%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 30%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%; height: 10px"></td>
                            <td style="width: 16.66%">
                                <asp:Label ID="lblRRN" runat="server" Width="150">RRN</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txtRRN" runat="server" Width="200"></asp:Label>
                            </td>
                           

                        </tr>
                        <tr>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 30%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%; height: 10px"></td>



                        </tr>
                        <tr>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 30%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%; height: 10px"></td>

                            <td style="width: 10%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 30%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%; height: 10px"></td>
                            <td style="width: 16.66%">
                                <asp:Label ID="lblAdd4" runat="server" Width="150">Additional Field 4:</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txtAdd4" runat="server" Width="200"></asp:Label>
                            </td>
                            <td style="width: 16.66%">
                                <asp:Label ID="lblAdd5" runat="server" Width="150">Additional Field 5:</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txtAdd5" runat="server" Width="200"></asp:Label>
                            </td>
                            <td style="width: 16.66%">
                                <asp:Label ID="lblAdd6" runat="server" Width="150">Additional Field 6</asp:Label>
                            </td>
                            <td style="width: 16.66%">
                                <asp:Label ID="txtAdd6" runat="server" Width="200"></asp:Label>
                            </td>
                            <td style="width: 10%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 30%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%; height: 10px"></td>
                            <td style="width: 16.66%">
                                <asp:Label ID="lblAdd7" runat="server" Width="150">Additional Field 7:</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txtAdd7" runat="server" Width="200"></asp:Label>
                            </td>
                            <td style="width: 16.66%">
                                <asp:Label ID="lblAdd8" runat="server" Width="150">Additional Field 8:</asp:Label>
                            </td>
                            <td style="width: 16.66%">
                                <asp:Label ID="txtAdd8" runat="server" Width="200"></asp:Label>
                            </td>

                            <td style="width: 10%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                            <td style="width: 30%; height: 10px"></td>
                            <td style="width: 20%; height: 10px"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%; height: 10px"></td>
                            <td style="width: 16.66%">
                                <asp:Label ID="lblAdd9" runat="server" Width="150">Additional Field 9:</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txtAdd9" runat="server" Width="200"></asp:Label>
                            </td>
                            <td style="width: 16.66%">&nbsp;
                            </td>
                            <td style="width: 16.66%">&nbsp;
                            </td>
                            <td style="width: 16.66%"></td>
                            <td style="width: 16.66%">&nbsp;
                            </td>
                            <td style="width: 10%; height: 10px"></td>
                        </tr>
                    </table>--%>
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
