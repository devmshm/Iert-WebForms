<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatepay.aspx.cs" MasterPageFile="~/masterpages/Admin.master" Inherits="payment_updation_updatepay" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <meta http-equiv="refresh" content="30">
    <style type="text/css">
        @media print {
            .nprintdiv {
                display: none !important;
            }

            @page {
                size: portrait;
            }


            #tbllist {
                max-width: 900px;
                width: 100%;
                position: relative;
            }

                #tbllist td, th {
                    vertical-align: middle;
                }
        }
    </style>

    <script language="javascript" type="text/javascript">
        function rePrint() {
            window.print();
        }
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="FRM" runat="server">
        <div class="container">

            <div class="card nav-border">
                <div class="card-header bg-warning">
                    <h5>Application ID</h5>
                </div>
                <div class="card-body">
                    <div class="form-horizontal">
                        <label class="control-label">
                            Application ID
                        </label>
                        <asp:TextBox runat="server" ID="txtappno" CssClass="form-control"></asp:TextBox>
                         <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button CssClass="btn btn-danger shadow" ID="btnsearch" Text="View" runat="server" OnClick="btnsearch_Click" />
                </div>
            </div>
        </div>
    </form>

</asp:Content>
