<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list2.aspx.cs" Inherits="list2" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table td, th {
            padding: 5px;
        }
    </style>
    <style type="text/css">
        @media print {
            .nprintdiv {
                display: none !important;
            }

            #Home {
                display: none;
            }

            .tbldetails {
                display: none
            }

            #dvp {
                visibility: visible;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel-body nprintdiv">
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-lg-1 col-md-1 col-xs-12 col-sm-12 control-label">
                        Date</label>
                    <div class="col-lg-2 col-md-1 col-xs-12 col-sm-12">
                        <asp:DropDownList CssClass="form-control" ID="ddldate" AutoPostBack="true" OnSelectedIndexChanged="ddldate_SelectedIndexChanged" runat="server"></asp:DropDownList>
                    </div>
                    <label class="col-lg-1 col-md-1 col-xs-12 col-sm-12 control-label">
                        Course</label>
                    <div class="col-lg-2  col-md-1 col-xs-12 col-sm-12">
                        <asp:DropDownList CssClass="form-control" ID="ddlcourse" AutoPostBack="true" OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged" runat="server"></asp:DropDownList>
                    </div>
                    <label class="col-lg-1 col-md-1 col-xs-12 col-sm-12 control-label">
                        Shift</label>
                    <div class="col-lg-2  col-md-1 col-xs-12 col-sm-12">
                        <asp:DropDownList CssClass="form-control" ID="ddlshift" AutoPostBack="true" OnSelectedIndexChanged="ddlshift_SelectedIndexChanged" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </div>
            <hr />
        </div>


        <div>
            <asp:Repeater runat="server" ID="gdvlist">

                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# (Container.ItemIndex ) % 4 == 0? TableHeader : "" %>

                    <tr style="font-size: 12px;">
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000">
                            <%#(Container.ItemIndex+1).ToString() %>
                        </td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000">
                            <%#DataBinder.Eval(Container.DataItem, "TOKENNO")%>
                        </td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000">
                            <%#DataBinder.Eval(Container.DataItem, "FINALMERIT")%>
                        </td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000">
                            <%#DataBinder.Eval(Container.DataItem, "ROLLNO")%>
                        </td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000">
                            <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                            <br />
                            <%#DataBinder.Eval(Container.DataItem, "FATHERNAME")%>
                            <br />
                            <%#DataBinder.Eval(Container.DataItem, "CATEGORY")%>
                            <br />
                            <%#DataBinder.Eval(Container.DataItem, "GENDER")%>
                            <br />
                            <%#DataBinder.Eval(Container.DataItem, "DOB")%>

                        </td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000">
                            <img src="http://iertentrance.in/photo/<%#DataBinder.Eval(Container.DataItem, "candidate_photo")%>" style="height: 100px; width: 100px" />
                        </td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000"></td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none; border-right: solid 1px #000">&nbsp;
                        </td>
                        <td style="border-bottom: solid 1px #000; vertical-align: middle; border-top: none;">&nbsp;
                        </td>

                    </tr>

                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
                <%--<ItemTemplate itemstyle-horizontalalign="Center" headerstyle-horizontalalign="Center" headertext="Ticket No" datafield="TOKENNO" />--%>
                <%--<asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="Roll No." DataField="ROLLNO" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="Candidate's Name" DataField="CANDIDATENAME" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="Father Name" DataField="FATHERNAME" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="Category" DataField="CATEGORY" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="DOB" DataField="DOB" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="Gender" DataField="GENDER" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="Sub Category" DataField="SUB_CATEGORY" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="EWS" DataField="EWS" />
                    <asp:BoundField ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="Merit" DataField="FINALMERIT" />--%>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
