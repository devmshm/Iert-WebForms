<%@ Page Language="C#" AutoEventWireup="true" CodeFile="counselling_form.aspx.cs" Inherits="counselling_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table td,th{
            padding:5px
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
        <div class="table table-responsive">
            <asp:GridView ID="gdstudent" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" Width="100%" DataKey="rollno" runat="server" AutoGenerateColumns="false" CssClass="table-striped table-bordered table-hover">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div style="page-break-after: always;"></div>
                            <tr>
                                <td style="text-align: center; font-weight: bold; font-size: 14px;" colspan="4">
                                    <img style="height: 30px;" src="favicon.png" /><br />
                                    IERT ENTRANCE EXAMINATION 2023
                                <br>
                                    CALL LIST  FOR &nbsp;<%#DataBinder.Eval(Container.DataItem, "COURSE")%> </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Application Number</td>
                                <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "application_no")%>
                                </td>
                                <td rowspan="5" style="text-align: center; width: 100px">
                                    <img src="http://iertentrance.in/photo/<%#DataBinder.Eval(Container.DataItem, "candidate_photo")%>" style="height: 100px; width: 100px" />
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Candidate Name</td>
                                <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>

                            </tr>
                            <tr style="font-size:12px">
                                <td>Father's Name</td>
                                <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "FATHERNAME")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Mother's Name</td>
                                <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "mother_name")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Date of Birth</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "dob")%>
                                </td>

                            </tr>
                            <tr style="font-size:12px">
                                <td>Gender</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "gender")%>
                                </td>
                            </tr> 
                            <tr style="font-size:12px">
                                <td>Nationality</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "nationality")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Parent's Domicile</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Category</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CATEGORY")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Sub Category</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "SUB_CATEGORY")%>
                                </td>
                            </tr>
                           
                            <tr style="font-size:12px">
                                <td>EWS</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "EWS")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>If Parents Employed in</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "EMPLOYED")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Mobile No</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "MOBILE_NO")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Aadhar No.</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "AADHARNO")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Email Address</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "EMAIL_ID")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Fee Transaction No.</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "TRACKING_ID")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Fee Transaction Date and Time</td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "ADDEDDATE")%>
                                </td>
                            </tr>
                             <tr style="font-size:12px">
                                <td>Exam Center </td>
                                <td colspan="3">
                                    <%#DataBinder.Eval(Container.DataItem, "CENTER1")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td colspan="6" style="text-align: left; font-weight: bold">Permanent address</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Address</td>
                                <td style="width:300px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                                <td>State</td>
                                <td style="width:200px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>City</td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                                <td>Pincode</td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>

                            <tr style="font-size:12px">
                                <td colspan="6" style="text-align: left; font-weight: bold">Correspondence address</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Address</td>
                                <td style="width:300px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                                <td>State</td>
                                <td style="width:200px">
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>City</td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                                <td>Pincode</td>
                                <td>
                                    <%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%>
                                </td>
                            </tr>
                           
                            
                            
                            <tr style="font-size:12px">
                                <td colspan="6" style="text-align: left; font-weight: bold">Qualification Details</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td colspan="6" style="text-align: left; font-weight: bold">High School</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>College</td>
                                <td>Passed/Appearing</td>
                                <td>Board</td>
                                <td>State of Qualifying Exam</td>

                            </tr>
                            <tr style="font-size:12px">
                                <td style="width:200px">
                                    <div id="dphcollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dphpass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dphboard"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td style="width:200px">
                                    <div id="dphstate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr style="font-size:12px">
                                <td>Subjects</td>
                                <td>Year of Passing</td>
                                <td>Maximum Marks</td>
                                <td>Obtained Marks</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td style="width:200px">
                                    <div id="dphsub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dphyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dphmm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dphom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Stream</td>
                                <td colspan="3">
                                    <div id="dphstream"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td colspan="6" style="text-align: left; font-weight: bold">Intermediate /(10+2) Equivalent</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>College</td>
                                <td>Passed/Appearing</td>
                                <td>Board</td>
                                <td>State of Qualifying</td>

                            </tr>
                            <tr style="font-size:12px">
                                <td style="width:200px">
                                    <div id="dpicollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpipass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpiboard"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td style="width:200px">
                                    <div id="dpistate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr style="font-size:12px">
                                <td>Subjects</td>
                                <td>Year of Passing</td>
                                <td>Maximum Marks</td>
                                <td>Obtained Marks</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>
                                    <div id="dpisub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpiyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpimm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpiom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>Stream</td>
                                <td colspan="3">
                                    <div id="dpistream"></div>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td colspan="6" style="text-align: left; font-weight: bold">Diploma</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>College</td>
                                <td>Passed/Appearing</td>
                                <td>Stream</td>
                                <td>State of Qualifying</td>

                            </tr>
                            <tr style="font-size:12px">
                                <td style="width:200px">
                                    <div id="dpdcollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpdpass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpdstream"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td style="width:200px">
                                    <div id="dpdstate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr style="font-size:12px">
                                <td>Subjects</td>
                                <td>Year of Passing</td>
                                <td>Maximum Marks</td>
                                <td>Obtained Marks</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>
                                    <div id="dpdsub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpdyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpdmm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpdom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>

                            <tr style="font-size:12px">
                                <td colspan="6" style="text-align: left; font-weight: bold">Graduation</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>College</td>
                                <td>Passed/Appearing</td>
                                <td>Stream</td>
                                <td>State of Qualifying</td>

                            </tr>
                            <tr style="font-size:12px">
                                <td style="width:200px">
                                    <div id="dpgcollege"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpgpass"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpgstream"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td style="width:200px">
                                    <div id="dpgstate"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>

                            </tr>
                            <tr style="font-size:12px">
                                <td>Subjects</td>
                                <td>Year of Passing</td>
                                <td>Maximum Marks</td>
                                <td>Obtained Marks</td>
                            </tr>
                            <tr style="font-size:12px">
                                <td>
                                    <div id="dpgsub"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpgyp"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpgmm"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                                <td>
                                    <div id="dpgom"><%#DataBinder.Eval(Container.DataItem, "CANDIDATENAME")%></div>
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td colspan="2">
                                    <div>&nbsp;I certify that I have filled the form myself and I have made all the entries in this form. No request shall be made for any change what so ever.</div></td>
                                <td style="text-align: center;">
                                    <img src="http://iertentrance.in/photo/<%#DataBinder.Eval(Container.DataItem, "candidate_sign")%>" style="height: 50px; width: 100px" />

                                    (Signature)
                                </td>
                                <td style="text-align: center; width: 50px">
                                    <img src="http://iertentrance.in/photo/<%#DataBinder.Eval(Container.DataItem, "candidate_thumb")%>" style="height: 50px; width: 100px" />

                                    <br />
                                    (Thumb)
                                </td>
                            </tr>
                            <tr style="font-size:12px">
                                <td colspan="2" style="vertical-align: middle; padding: 5px;border-right:none">
                                   Roll No. :<%#DataBinder.Eval(Container.DataItem, "rollno")%>
                                    <br />
                                    <%#DataBinder.Eval(Container.DataItem, "finalmerit")%>
                                </td>
                                <td colspan="2" style="border-left:none"> Ticket No: <%#DataBinder.Eval(Container.DataItem, "tokenno")%>
                                    <br />
                                    Date:<%#DataBinder.Eval(Container.DataItem, "date")%>&nbsp;<%#DataBinder.Eval(Container.DataItem, "reporting_time")%>
                                </td>

                            </tr>


                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
