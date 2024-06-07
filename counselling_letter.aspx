<%@ Page Language="C#" AutoEventWireup="true" CodeFile="counselling_letter.aspx.cs" Inherits="counselling_letter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #tbldetails td, th {
            padding: 5px;
            border: solid 1px;
            border-collapse: collapse;
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
        <div class="card-body">
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
                        
                            <%# (Container.ItemIndex ) % 1 == 0? TableHeader : "" %>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Application Number</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="2">
                                     <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" rowspan="5" style="text-align: center; width: 100px">
                                    <img src="http://iertentrance.in/photo/<%#DataBinder.Eval(Container.DataItem, "candidate_photo")%>" style="height: 100px; width: 100px" />
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Candidate Name</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>

                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Father's Name</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Mother's Name</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Date of Birth</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>

                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Gender</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Nationality</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Domicile</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Category</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Sub Category</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Religion</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">EWS</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">If Parents Employed in</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Mobile No</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Aadhar No.</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Email Address</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>

                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">Permanent address</td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Address</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">State</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">City</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Pincode</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>

                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">Correspondence address</td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Address</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">State</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">City</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Pincode</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">Fee Details</td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Fee Transaction No.</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Fee Transaction Date and Time</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Fee Submitted status</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">Qualification Details</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">High School</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">College</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Passed/Appearing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Board</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">State of Qualifying Exam</td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphcollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphpass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphboard"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphstate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Subjects</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Year of Passing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Maximum Marks</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Obtained Marks</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphsub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphmm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dphom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Stream</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <div id="dphstream"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">Intermediate /(10+2) Equivalent</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">College</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Passed/Appearing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Board</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">State of Qualifying</td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpicollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpipass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpiboard"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpistate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Subjects</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Year of Passing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Maximum Marks</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Obtained Marks</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpisub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpiyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpimm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpiom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Stream</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="3">
                                    <div id="dpistream"></div>
                                </td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">Diploma</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">College</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Passed/Appearing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Stream</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">State of Qualifying</td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdcollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdpass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdstream"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdstate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Subjects</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Year of Passing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Maximum Marks</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Obtained Marks</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdsub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdmm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpdom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>

                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="6" style="text-align: left; font-weight: bold">Graduation</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">College</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Passed/Appearing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Stream</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">State of Qualifying</td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgcollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgpass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgstream"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgstate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Subjects</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Year of Passing</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Maximum Marks</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">Obtained Marks</td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgsub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgmm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px">
                                    <div id="dpgom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr style="vertical-align: middle">
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="2" style="vertical-align: middle">
                                    <input type="checkbox" class="isddlvalid" id="chkfinal" />&nbsp;I certify that I have filled the form myself and I have made all the entries in this form. No request shall be made for any change what so ever.</td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" style="text-align: center;">
                                    <img src="http://iertentrance.in/photo/<%#DataBinder.Eval(Container.DataItem, "candidate_sign")%>" style="height: 100px; width: 100px" />

                                    (Signature)
                                </td>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" style="text-align: center; width: 50px">
                                    <img src="http://iertentrance.in/photo/<%#DataBinder.Eval(Container.DataItem, "candidate_thumb")%>" style="height: 100px; width: 100px" />

                                    <br />
                                    (Thumb)
                                </td>
                            </tr>
                            <tr>
                               <td style:"border-right:solid 1px;border-left:solid 1px;border-top:solid 1px;border-bottom:solid 1px" colspan="4" style="vertical-align: middle; padding: 5px">
                                    <div class="pull-right nprintdiv">
                                        <button id="finalsubmit" disabled="disabled" class="btn btn-outline-primary btn-lg btn-flat shadow nav-border">Final Submit</button>
                                    </div>
                                </td>
                            </tr>
                        
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>
