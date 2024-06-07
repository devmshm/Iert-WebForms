<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidate_report.aspx.cs" MaintainScrollPositionOnPostback="true" MasterPageFile="~/masterpages/Admin.master" Inherits="candidate_report" %>

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
                <div class="card-header shadow nprintdiv">
                    <div>
                        <div class="pull-left">
                            CANDIDATE REPORT
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
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="MOBILE NO">
                                    <ItemTemplate>
                                        <%#Eval("MOBILE_NO")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <%-- <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="EMAIL ID">
                                    <ItemTemplate>
                                        <%#Eval("EMAIL_ID")%>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="BASIC DETAILS">
                                    <ItemTemplate>
                                        <%#Eval("BASIC DETAILS")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="ADDRESS DETAILS">
                                    <ItemTemplate>
                                        <%#Eval("ADDRESS DETAILS")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="QUALIFICATION">
                                    <ItemTemplate>
                                        <%#Eval("QUALIFICATION")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="PHOTO">
                                    <ItemTemplate>
                                        <%#Eval("PHOTO")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="SIGN">
                                    <ItemTemplate>
                                        <%#Eval("SIGN")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="THUMB">
                                    <ItemTemplate>
                                        <%#Eval("THUMB")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderText="FINAL SUBMISSION">
                                    <ItemTemplate>
                                        <%#Eval("FINALSUBMISSION")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
        <script src="data_script/report.js?v=1.1.0"></script>
    </form>
</asp:Content>
