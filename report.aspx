<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" MasterPageFile="~/masterpages/Admin.master" Inherits="report" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
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
    <div class="container">
        <div class="card nav-border">
            <div class="card-header shadow nprintdiv">
                <div>
                    <div class="pull-left">
                        Registration Report
                    </div>
                    <div class="pull-right nprintdiv">
                        <div class="btn btn-success btn-sm shadow" id="btnPrint">
                            <i class="fa fa-print"></i>&nbsp;Print
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="table table-responsive no-padding shadow">
                    <table width="100%" class="table-striped table-bordered" id="tbllist">
                        <thead>
                            <tr style="text-align: center;">
                                <td style="vertical-align: middle;">#</td>
                                <td style="vertical-align: middle;">Course</td>
                                <td style="vertical-align: middle;">Total Registration</td>
                                <td style="vertical-align: middle;">Registered But Not Updated Yet</td>
                                <td style="vertical-align: middle;">Personal Details Updated</td>
                                <td style="vertical-align: middle;">Adress Details Updated</td>
                                <td style="vertical-align: middle;">Educational Details Updated</td>
                                <td style="vertical-align: middle;">Photo Updated</td>
                                <td style="vertical-align: middle;">Signature Updated</td>
                                <td style="vertical-align: middle;">Thumb impresssion Updated</td>
                                <td style="vertical-align: middle;">Payment Done</td>
                                <td style="vertical-align: middle;">Submitted</td>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="data_script/report.js?v=1.3.0"></script>

</asp:Content>
