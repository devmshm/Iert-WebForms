<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pay_update.aspx.cs" Inherits="payment_updation_pay_update" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>I.E.R.T ADMISSION</title>
    <link rel="stylesheet" href="../assets/css/style-starter.css">
    <style type="text/css" id="operaUserStyle"></style>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../stylesheets/style.css" />
    <link rel="stylesheet" href="../stylesheets/jtab.min.css" />
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
        .nav-border {
            border-radius: 30px;
        }

        .bt-border {
            border-radius: 10px;
        }

        .bt-border1 {
            border-bottom-left-radius: 30px;
            border-bottom-right-radius: 30px;
        }
    </style>
    <style>
        .blink {
            animation: blinker 3s linear infinite;
            color: red;
            font-family: sans-serif;
        }

        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }
    </style>

</head>
<body>

    <form id="FRM" runat="server">
        <div class="container-fluid">
            <div class="card card mt-5">
                <center class="">
                    <h3 class="alert alert-danger shadow">Payment Updation</h3>
                </center>
                <div style="margin-left: 5px; margin-right: 5px">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header bg-warning">
                                    <h5>Application ID</h5>
                                </div>
                                <div class="card-body">
                                    <div class="form-horizontal">
                                        <label class="control-label">
                                            Application ID
                                        </label>
                                        <asp:TextBox runat="server" ID="txtappno" placeholder="Enter Application ID" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <asp:Button CssClass="btn btn-danger shadow" ID="btnsearch" Text="View" runat="server" OnClick="btnsearch_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="table table-responsive">
                                <asp:GridView ID="gdstudent" HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" DataKey="applicationid"
                                    runat="server" AutoGenerateColumns="false" CssClass="table table-striped  table-bordered table-hover">
                                    <PagerStyle HorizontalAlign="center" CssClass="GridPager" />
                                    <Columns>
                                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="S.No.">
                                            <ItemTemplate>
                                                <%#(Container.DataItemIndex+1).ToString().PadLeft(2,'0') %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="APPLICATION ID">
                                            <ItemTemplate>
                                                <label id="lblappid" runat="server"><%#Eval("APPLICATION_NO")%></label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="NAME">
                                            <ItemTemplate>
                                                <%#Eval("FIRST_NAME")%> <%#Eval("MIDDLE_NAME")%> <%#Eval("LAST_NAME")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="STATUS">
                                            <ItemTemplate>
                                                <%#Eval("STATUS")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="TRANSACTION ID">
                                            <ItemTemplate>
                                                <%#Eval("TRACKING_ID")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="AMOUNT PAID">
                                            <ItemTemplate>
                                                <%#Eval("AMOUNT")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="ADDED DATE">
                                            <ItemTemplate>
                                                <%#Eval("ADDEDDATE")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        <hr class="border-danger" />
                        <div class="col-md-12 mt-5">
                            <div class="card" id="dvenable" runat="server">
                                <div class="card-header bg-info">
                                    <h5>Update Payment Status</h5>
                                </div>
                                <div class="card-body">
                                    <div class="form-horizontal">
                                        <label class="control-label">
                                            Application ID
                                        </label>
                                        <asp:TextBox runat="server" ID="txtappid" disabled="disabled" CssClass="form-control"></asp:TextBox>

                                        <label class="control-label">
                                            Status
                                        </label>
                                        <asp:TextBox runat="server" ID="txtstatus" disabled="disabled" CssClass="form-control">Success</asp:TextBox>
                                        <label class="control-label">
                                            Transaction ID
                                        </label>
                                        <asp:TextBox runat="server" ID="txttrck_id" placeholder="Enter Transaction No/ID" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <asp:Button CssClass="btn btn-warning shadow" ID="btnupdated" OnClick="btnupdated_Click" Text="Update" runat="server" />
                                </div>
                            </div>
                            <br />
                            <hr />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <hr />
    </form>
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
    <script src="../assets/js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $('.owl-one').owlCarousel({
                loop: true,
                margin: 0,
                nav: false,
                responsiveClass: true,
                autoplay: false,
                autoplayTimeout: 5000,
                autoplaySpeed: 1000,
                autoplayHoverPause: false,
                responsive: {
                    0: {
                        items: 1,
                        nav: false
                    },
                    480: {
                        items: 1,
                        nav: false
                    },
                    667: {
                        items: 1,
                        nav: true
                    },
                    1000: {
                        items: 1,
                        nav: true
                    }
                }
            })
        })
    </script>

</body>
</html>
