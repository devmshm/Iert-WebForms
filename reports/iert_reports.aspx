<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iert_reports.aspx.cs" MaintainScrollPositionOnPostback="true" MasterPageFile="~/masterpages/Admin.master" Inherits="reports_iert_reports" %>


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
        <form id="frm1" runat="server">
            <div class="card nav-border">
                <div class="card-header bg-info shadow nprintdiv">
                    <div>
                        <div class="pull-left">
                            Report
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-inline mb-4">
                        <label class="col-md-3 control-label">Report Category</label>
                        <div class="col-md-8">
                            <asp:DropDownList CssClass=" form-control" ID="ddlcat" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-inline mb-4">
                        <label class="col-md-3 control-label">Course</label>
                        <div class="col-md-8">
                            <asp:DropDownList CssClass="form-control" ID="ddlcourse" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddltype_SelectedIndexChanged">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <%-- <label class="col-md-3 control-label">Type / Status</label>
                        <div class="col-md-3">
                            <asp:DropDownList CssClass="form-control" ID="ddltype" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>--%>
                    </div>
                    <div class="form-inline mb-4">
                        <%--<label class="col-md-3 control-label">Course</label>
                            <div class="col-md-8">
                                <asp:DropDownList CssClass="form-control" ID="ddlcourse" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddltype_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>--%>
                    </div>
                </div>
            </div>
            <hr />
            <div class="card-body">
                <div class="card nav-border">
                    <div class="card-header bg-primary shadow nprintdiv">
                        <div>
                            <div class="pull-left" style="color: white">
                                Report
                            </div>
                            <div class="pull-right" style="font-weight: bold; font-size: 20px">
                                <asp:Label ID="Label1" runat="server" ForeColor="white">Total Count &nbsp;:&nbsp;</asp:Label>
                                <asp:Label ID="txtcount" runat="server" ForeColor="red"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table table-responsive no-padding shadow">
                            <asp:GridView ID="gdvDetail" Width="100%" CssClass="table-bordered table-striped" runat="server" AutoGenerateColumns="false" GridLines="None"
                                BorderStyle="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="#" HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Application_No" HeaderText="Application No" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Course" HeaderText="Course" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="First_Name" HeaderText=" Name" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Category" HeaderText="Category" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Per_city" HeaderText="City" />
                                </Columns>
                                <FooterStyle />
                            </asp:GridView>
                            <asp:GridView ID="gdpayment" Width="100%" CssClass="table-bordered table-striped" runat="server" AutoGenerateColumns="false" GridLines="None"
                                BorderStyle="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="#" HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>

                                    </asp:TemplateField>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="application_no" HeaderText="Application No" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Course" HeaderText="Course" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="First_Name" HeaderText=" Name" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="Category" HeaderText="Category" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="PAYMENTSTATUS" HeaderText="Payment Status" />
                                </Columns>
                                <FooterStyle />
                            </asp:GridView>
                            <asp:GridView ID="gdcenter" Width="100%" CssClass="table-bordered table-striped" runat="server" AutoGenerateColumns="false" GridLines="None"
                                BorderStyle="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="#" HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>

                                    </asp:TemplateField>

                                    <%--                <asp:BoundField ItemStyle-Width="150px" DataField="Course" HeaderText="Course Name" />--%>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="center" HeaderText="Center City" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="FIRST_PREFERENCE" HeaderText="FIRST PREFERENCE" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="SECOND_PREFERENCE" HeaderText="SECOND PREFERENCE" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="THIRD_PREFERENCE" HeaderText="THIRD PREFERENCE" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="FOURTH_PREFERENCE" HeaderText="FOURTH PREFERENCE" />
                                </Columns>
                                <FooterStyle />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>

            <hr />
        </form>
    </div>
</asp:Content>
