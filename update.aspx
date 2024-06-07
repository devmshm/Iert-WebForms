<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/candidate.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <style>
        #tbldetails {
            empty-cells: hide;
        }

        .tblprint td, th {
            border: solid 1px;
            padding-left: 5px;
            border-collapse: collapse;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('.prefcenter').on('change', function (event) {
                var prevValue = $(this).data('previous');
                $('.prefcenter').not(this).find('option[value="' + prevValue + '"]').show();
                var value = $(this).val();
                $(this).data('previous', value); $('select').not(this).find('option[value="' + value + '"]').hide();
            });
        });
        $(document).ready(function () {
            $("div.bhoechie-tab-menu>div.list-group>a").click(function (e) {
                e.preventDefault();
                $(this).siblings('a.active').removeClass("active");
                $(this).addClass("active");
                var index = $(this).index();
                $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
                $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
            });

            $(".bt1").click(function (e) {

            });
            $(".bt2").click(function (e) {
                e.preventDefault();
                $('#T3').addClass("active");
                $('#T2').removeClass("active");
                var index = $(this).index();
                $("#t2").removeClass("active");
                $("#t3").eq(index).addClass("active");
            });
        });
    </script>
    <style>
        input[type='text'] {
            font-size: 14px;
        }

        input[type='number'] {
            font-size: 14px;
        }

        input[type='tel'] {
            font-size: 14px;
        }
    </style>
    <style>
        #tbldetails td, th {
            border: 1px solid;
            border-collapse: collapse;
        }

        #tbldetailsp td, th {
            border: 1px solid;
            border-collapse: collapse;
        }
    </style>
    <style>
        .badge {
            height: 10px;
            width: 10px;
            display: table-cell;
            text-align: center;
            vertical-align: middle;
            border-radius: 50%;
            background-color: white;
            color: black;
        }
    </style>
    <style>
        .table td {
            padding-top: 5px;
            padding-bottom: 0px
        }
    </style>
    <style>
        #center td, th {
            border: 1px solid;
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mx-5 mt-5">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab-container" style="padding-bottom: 20px; padding-top: 10px">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu nprintdiv">
                <div class="list-group">
                    <%--  <a href="#" class="list-group-item  active text-center" id="basiclist">
                        <h4 class="glyphicon glyphicon-user"></h4>
                        <br />
                        Form Correction
                    </a>--%>
                    <a href="#" class="list-group-item text-center shadow" id="admitcard">
                        <h4 class="fa fa-rupee"></h4>
                        <br />
                        Admit Card
                    </a>

                    <a href="#" class="list-group-item text-center shadow" id="finallist">
                        <h4 class="glyphicon glyphicon-file"></h4>
                        <br />
                        Application Print
                    </a>

                    <a href="#" class="list-group-item text-center" id="btnlogout">
                        <h4 class="glyphicon glyphicon-log-out"></h4>
                        <br />
                        Logout
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab">
                    <%--correction region--%>
                    <div class="bhoechie-tab-content active">
                        <div class="pull-right" style="margin-right: 5em">
                            <button class="btn btn-outline-success" id="admitprint">
                                <i class="fa fa-print"></i>
                            </button>
                        </div>
                        <div class="container mt-5 mx-5" id="admitc1">
                        </div>
                    </div>
                       <%--application form region--%>
   <div class="bhoechie-tab-content">
       <div class="container mt-5 mx-5" id="appform">
           <div class="card">
               <div class="card-header">
                   <div class="pull-right nprintdiv">
                       <div class="btn btn-success btn-lg shadow" onclick="rePrint();">
                           <i class="fa fa-print"></i>&nbsp;Print
                       </div>
                   </div>
               </div>

               <div class="card-body">
                   <div class="table table-responsive" style="border: groove 1px">
                       <table width="100%" id="tbldetails" class="table-striped">
                           <tr style="text-align: center">
                               <td rowspan="2" style="width: 150px; text-align: center; vertical-align: middle">
                                   <img src="favicon.png" style="height: 90px" /></td>
                               <td colspan="3" style="font-size: 25px">INSTITUTE OF ENGINEERING AND RURAL TECHNOLOGY (IERT)<br />
                                   <p style="font-size: 16px; font-weight: bold" class="mt-3">IERT ENTRANCE EXAMINATION APPLICATION FORM-2023</p>
                               </td>
                           </tr>
                           <tr style="text-align: center">
                               <td colspan="3">26, CHATHAM LINES, PRAYAGRAJ - 211002 (U.P), INDIA
                               </td>
                           </tr>
                           <tr style="vertical-align: middle; width: 100px">
                               <td>Application Number</td>
                               <td colspan="2">
                                   <div id="dpappno"></div>
                               </td>
                               <td rowspan="5" style="text-align: center; width: 100px; vertical-align: middle">
                                   <img id="dvpimg" src="1.jpeg" style="height: 150px; width: 150px" />
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Course</td>
                               <td colspan="2">
                                   <div id="dpcourse"></div>
                               </td>

                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Candidate Name</td>
                               <td colspan="2">
                                   <div id="dpcname"></div>
                               </td>

                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Father's Name</td>
                               <td colspan="2">
                                   <div id="dpfname"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Mother's Name</td>
                               <td colspan="2">
                                   <div id="dpmname"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Date of Birth</td>
                               <td colspan="3">
                                   <div id="dpdob"></div>
                               </td>

                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Gender</td>
                               <td colspan="3">
                                   <div id="dpgen"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Nationality</td>
                               <td colspan="3">
                                   <div id="dpnat"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Domicile</td>
                               <td colspan="3">
                                   <div id="dpdomicile"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Category</td>
                               <td colspan="3">
                                   <div id="dpcat"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Sub Category</td>
                               <td colspan="3">
                                   <div id="dpsubcat"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Religion</td>
                               <td colspan="3">
                                   <div id="dpreligion"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>EWS</td>
                               <td colspan="3">
                                   <div id="dpews"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>If Parents Employed in</td>
                               <td colspan="3">
                                   <div id="dpemp"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Mobile No</td>
                               <td colspan="3">
                                   <div id="dpmobile"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Aadhar No.</td>
                               <td colspan="3">
                                   <div id="dpadhar"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Email Address</td>
                               <td colspan="3">
                                   <div id="dpmail"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Examination Center City Name 1</td>
                               <td colspan="3">
                                   <div id="dpcity1"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Examination Center City Name 2</td>
                               <td colspan="3">
                                   <div id="dpcity2"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Examination Center City Name 3</td>
                               <td colspan="3">
                                   <div id="dpcity3"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Examination Center City Name 3</td>
                               <td colspan="3">
                                   <div id="dpcity4"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td colspan="6" style="text-align: left; font-weight: bold">Permanent address</td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Address</td>
                               <td>
                                   <div id="txtpadd1"></div>
                               </td>
                               <td>State</td>
                               <td>
                                   <div id="ddlpstate"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>City</td>
                               <td>
                                   <div id="ddlpcity"></div>
                               </td>
                               <td>Pincode</td>
                               <td>
                                   <div id="txtppincode"></div>
                               </td>
                           </tr>

                           <tr style="vertical-align: middle">
                               <td colspan="6" style="text-align: left; font-weight: bold">Postal address</td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Address</td>
                               <td>
                                   <div id="txtppostadd1"></div>
                               </td>
                               <td>State</td>
                               <td>
                                   <div id="ddlpoststate"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>City</td>
                               <td>
                                   <div id="ddlppostcity"></div>
                               </td>
                               <td>Pincode</td>
                               <td>
                                   <div id="txtppostpincode"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td colspan="6" style="text-align: left; font-weight: bold">Fee Details</td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Fee Transaction No.</td>
                               <td colspan="3">
                                   <div id="refid"></div>
                               </td>
                           </tr>
                           <tr>
                               <td>Fee Transaction Date and Time</td>
                               <td colspan="3">
                                   <div id="paydate"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td>Fee Submitted status</td>
                               <td colspan="3">
                                   <div id="dvpaystatus"></div>
                               </td>
                           </tr>
                           <tr>
                               <td colspan="6" style="text-align: left; font-weight: bold">Qualification Details</td>
                           </tr>
                           <tr>
                               <td colspan="6" style="text-align: left; font-weight: bold">High School</td>
                           </tr>
                           <tr>
                               <td>College</td>
                               <td>Passed/Appearing</td>
                               <td>Board</td>
                               <td>State of Qualifying Exam</td>

                           </tr>
                           <tr>
                               <td>
                                   <div id="dphcollege"></div>
                               </td>
                               <td>
                                   <div id="dphpass"></div>
                               </td>
                               <td>
                                   <div id="dphboard"></div>
                               </td>
                               <td>
                                   <div id="dphstate"></div>
                               </td>

                           </tr>
                           <tr>
                               <td>Subjects</td>
                               <td>Year of Passing</td>
                               <td>Maximum Marks</td>
                               <td>Obtained Marks</td>
                           </tr>
                           <tr>
                               <td>
                                   <div id="dphsub"></div>
                               </td>
                               <td>
                                   <div id="dphyp"></div>
                               </td>
                               <td>
                                   <div id="dphmm"></div>
                               </td>
                               <td>
                                   <div id="dphom"></div>
                               </td>
                           </tr>
                           <tr>
                               <td>Stream</td>
                               <td colspan="3">
                                   <div id="dphstream"></div>
                               </td>
                           </tr>
                           <tr>
                               <td colspan="6" style="text-align: left; font-weight: bold">Intermediate /(10+2) Equivalent</td>
                           </tr>
                           <tr>
                               <td>College</td>
                               <td>Passed/Appearing</td>
                               <td>Board</td>
                               <td>State of Qualifying</td>

                           </tr>
                           <tr>
                               <td>
                                   <div id="dpicollege"></div>
                               </td>
                               <td>
                                   <div id="dpipass"></div>
                               </td>
                               <td>
                                   <div id="dpiboard"></div>
                               </td>
                               <td>
                                   <div id="dpistate"></div>
                               </td>

                           </tr>
                           <tr>
                               <td>Subjects</td>
                               <td>Year of Passing</td>
                               <td>Maximum Marks</td>
                               <td>Obtained Marks</td>
                           </tr>
                           <tr>
                               <td>
                                   <div id="dpisub"></div>
                               </td>
                               <td>
                                   <div id="dpiyp"></div>
                               </td>
                               <td>
                                   <div id="dpimm"></div>
                               </td>
                               <td>
                                   <div id="dpiom"></div>
                               </td>
                           </tr>
                           <tr>
                               <td>Stream</td>
                               <td colspan="3">
                                   <div id="dpistream"></div>
                               </td>
                           </tr>
                           <tr>
                               <td colspan="6" style="text-align: left; font-weight: bold">Diploma</td>
                           </tr>
                           <tr>
                               <td>College</td>
                               <td>Passed/Appearing</td>
                               <td>Stream</td>
                               <td>State of Qualifying</td>

                           </tr>
                           <tr>
                               <td>
                                   <div id="dpdcollege"></div>
                               </td>
                               <td>
                                   <div id="dpdpass"></div>
                               </td>
                               <td>
                                   <div id="dpdstream"></div>
                               </td>
                               <td>
                                   <div id="dpdstate"></div>
                               </td>

                           </tr>
                           <tr>
                               <td>Subjects</td>
                               <td>Year of Passing</td>
                               <td>Maximum Marks</td>
                               <td>Obtained Marks</td>
                           </tr>
                           <tr>
                               <td>
                                   <div id="dpdsub"></div>
                               </td>
                               <td>
                                   <div id="dpdyp"></div>
                               </td>
                               <td>
                                   <div id="dpdmm"></div>
                               </td>
                               <td>
                                   <div id="dpdom"></div>
                               </td>
                           </tr>

                           <tr>
                               <td colspan="6" style="text-align: left; font-weight: bold">Graduation</td>
                           </tr>
                           <tr>
                               <td>College</td>
                               <td>Passed/Appearing</td>
                               <td>Stream</td>
                               <td>State of Qualifying</td>

                           </tr>
                           <tr>
                               <td>
                                   <div id="dpgcollege"></div>
                               </td>
                               <td>
                                   <div id="dpgpass"></div>
                               </td>
                               <td>
                                   <div id="dpgstream"></div>
                               </td>
                               <td>
                                   <div id="dpgstate"></div>
                               </td>

                           </tr>
                           <tr>
                               <td>Subjects</td>
                               <td>Year of Passing</td>
                               <td>Maximum Marks</td>
                               <td>Obtained Marks</td>
                           </tr>
                           <tr>
                               <td>
                                   <div id="dpgsub"></div>
                               </td>
                               <td>
                                   <div id="dpgyp"></div>
                               </td>
                               <td>
                                   <div id="dpgmm"></div>
                               </td>
                               <td>
                                   <div id="dpgom"></div>
                               </td>
                           </tr>
                           <tr style="vertical-align: middle">
                               <td colspan="2" style="vertical-align: middle">I certify that I have filled the form myself and I have made all the entries in this form. No request shall be made for any change what so ever.</td>
                               <td style="text-align: center;">
                                   <img id="dvpsign" src="1.jpeg" style="height: 50px; width: 120px" /><br />
                                   (Signature)
                               </td>
                               <td style="text-align: center; width: 50px">
                                   <img id="dvpthumb" src="1.jpeg" style="height: 50px; width: 120px" />
                                   <br />
                                   (Thumb)
                               </td>
                           </tr>

                       </table>
                   </div>
               </div>
           </div>
       </div>
   </div>
                    <div class="bhoechie-tab-content ">
                        <div class="container mt-5 mx-5 card nav-border" id="updatedetails">
                            <div class="card-body">
                                <div class="col-md-12" style="text-align: center; border: groove 1px; padding: 20px">
                                    <label class="col-md-2">Select Category</label>
                                    <div class="col-md-8">
                                        <select id="ddlcorrection" class="form-control-lg">
                                            <option value="-1">Select</option>
                                            <option value="1">Basic Details</option>
                                            <option value="2">Address Details</option>
                                            <option value="3">Qualification Details</option>
                                            <option value="4">Photo/Signature</option>
                                        </select>
                                    </div>
                                </div>
                                <br />
                                <div class="table table-responsive" style="border: groove 1px">

                                    <table width="100%" class="table-striped" id="tblbasic">
                                        <tr>
                                            <td colspan="2" style="font-weight: bold; color: red">Basic Details
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="col-form-label">First Name <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td style="height: 10px;">
                                                <div class="form-group">
                                                    <input type="text" class="form-control isvalid" style="text-transform: uppercase;" disabled="disabled" id="txtfirstname" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Middle Name</label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input type="text" class="form-control isvalid" style="text-transform: uppercase;" disabled="disabled" id="txtminame" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Last Name <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input type="text" class="form-control isvalid" style="text-transform: uppercase;" disabled="disabled" id="txtlname" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Father Name <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" disabled="disabled" type="text" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtfname" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Mother Name <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input type="text" class="form-control isvalid" disabled="disabled" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtmname" />
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Your Contact No. <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input type="tel" class="form-control isvalid" disabled="disabled" id="txtphone" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Your Email Id <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input type="text" class="form-control isddlvalid" disabled="disabled" id="txtmail" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Date of birth <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control" id="txtdob" placeholder="dd/mm/yyyy" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Gender <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvgender" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" id="ddlgender" style="text-transform: uppercase;">
                                                    <option value="-1">--Select Gender--</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                    <option value="Transgender">Transgender</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Category <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvcat" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlcat">
                                                    <option value="-1">Select</option>
                                                    <option value="General">General</option>
                                                    <option value="OBC">OBC</option>
                                                    <option value="SC">SC</option>
                                                    <option value="ST">ST</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">EWS</label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvews" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlews">
                                                    <option value="-1">Select</option>
                                                    <option value="YES">Yes</option>
                                                    <option value="NO">No</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Sub Category <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvsubcat" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlsubcat">
                                                    <option value="-1">Select</option>
                                                    <option value="FF">FF (Freedom Fighter)</option>
                                                    <option value="MW">MW (Milatry Ward)</option>
                                                    <option value="PH">PH (Physically Handicapped)</option>
                                                    <option value="NA">Not Applicable</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Religion<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvreligion" disabled="disabled" />
                                                    &nbsp;  
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlreligion">
                                                    <option value="-1">Select</option>
                                                    <option value="Hindu">Hindu</option>
                                                    <option value="Muslim">Muslim</option>
                                                    <option value="Sikh">Sikh</option>
                                                    <option value="Christian">Christian</option>
                                                    <option value="Parsi">Parsi</option>
                                                    <option value="Jain">Jain</option>
                                                    <option value="Buddhist">Buddhist</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Parents employed<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvemp" disabled="disabled" />
                                                    &nbsp;
                                               <%-- <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlemp">
                                                    <option value="-1">Select</option>
                                                    <option value="UP Govt">UP Govt</option>
                                                    <option value="Central Govt">Central Govt</option>
                                                    <option value="Private Sector">Private Sector</option>
                                                    <option value="Business">Business</option>
                                                    <option value="Other">Other</option>
                                                </select>--%>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">If Parents employed in Central Govt. Posted In. <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvposted" disabled="disabled" />
                                                    &nbsp;
                                              <%--  <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlposted">
                                                    <option value="-1">Select</option>
                                                    <option value="UP">UP</option>
                                                    <option value="Other Than UP">Other Than UP</option>
                                                    <option value="Not Applicable">Not Applicable</option>

                                                </select>--%>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Parents Income<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvempscale" disabled="disabled" />
                                                    &nbsp;  
                                             <%--   <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlempscale">
                                                    <option value="-1">Select</option>
                                                    <option value="0 to 100000">0 - 100000</option>
                                                    <option value="100000 - 250000">100000 - 250000</option>
                                                    <option value="250000 - 500000">250000 - 500000</option>
                                                    <option value="500000 - 800000">500000 - 800000</option>
                                                    <option value="Above 800000 ">Above 800000 </option>
                                                </select>--%>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Domicile<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvdomicile" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddldomicile">
                                                    <option value="-1">Select</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Caste  <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="text" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtcaste" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Nationality  <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="col-md-4 form-control-lg" id="dvnat" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="txtnat">
                                                    <option value="-1">Select</option>
                                                    <option value="INDIAN">Indian</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="padding: 10px">
                                                <div class="pull-right" style="margin-right: 2em">
                                                    <button class="btn btn-warning btn-lg shadow bt-border btn-theme4" id="btnupdatebasic">Save /Update</button>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>

                                    <table width="100%" style="padding: 50px" class="table-striped" id="tbladdress">
                                        <tr>
                                            <td colspan="2" style="font-weight: bold; color: red">Permanent Address Details
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Address Line 1<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="text" style="text-transform: uppercase;" id="txtadd1" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Address Line 2</label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="text" style="text-transform: uppercase;" id="txtadd2" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Address Line 3</label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="text" style="text-transform: uppercase;" id="txtadd3" />
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">State<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <%--<label for="ddlcity" class="col-sm-4">
                                                    <span class="h6 small  text-muted pt-1 pl-2 pr-2">State</span>
                                                </label>
                                                <select class="form-control  fom-inline" id="ddlstates">
                                                    <option>-- Select State --</option>
                                                </select>--%>
                                                    <input type="text" class="col-md-4 form-control" id="dvstate" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlstates">
                                                    <option value="-1">Select</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">City<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input list="city" type="text" class="form-control  fom-inline isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="ddlcity">
                                                    <datalist id="city">
                                                        <option></option>
                                                    </datalist>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Pincode<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="number" id="txtpincode" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="font-weight: bold; color: red">Postal Address Details
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2" style="font-weight: bold; color: blue">
                                                <input type="checkbox" class="isvalid" id="checkit" />
                                                Same as Permanant address
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Address Line 1<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="text" style="text-transform: uppercase;" id="txtpostadd1" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Address Line 2</label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="text" style="text-transform: uppercase;" id="txtpostadd2" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Address Line 3</label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="text" style="text-transform: uppercase;" id="txtpostadd3" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">State<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-inline">

                                                    <%--    <label for="ddlcity" class="col-sm-4">
                                                    <span class="h6 small  text-muted pt-1 pl-2 pr-2">State</span>
                                                </label>
                                                <select class="form-control " id="ddlpoststates">
                                                    <option value="-1">-- Select State --</option>
                                                </select>--%>
                                                    <input type="text" class="col-md-4 form-control" id="dvpoststate" disabled="disabled" />
                                                    &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlpoststates">
                                                    <option value="-1">Select</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">City<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input type="text" list="postcity" class="form-control  fom-inline isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="ddlpostcity">
                                                    <datalist id="postcity">
                                                        <option></option>
                                                    </datalist>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; vertical-align: middle">
                                                <label class="control-label">Pincode<sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input class="form-control isvalid" type="number" id="txtpostpincode" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="padding: 15px">
                                                <div class="pull-right">
                                                    <button class="btn btn-warning btn-lg shadow btn-theme4 bt-border" id="btnupdateAdd">Save / Update</button>
                                                    <%--<button class="btn btn-warning shadow bt-border" id="btnupdateAdd">Save/Update</button>--%>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>


                                    <table width="100%" style="padding: 50px" class="table-striped" id="tblqualification">

                                        <tr>
                                            <td colspan="4" style="font-weight: bold; color: red; font-weight: bold; padding: 10px">&nbsp;&nbsp;&nbsp;Educational Qualifications
                                            </td>
                                        </tr>
                                        <tr style="text-align: center">
                                            <td class="alert alert-info" rowspan="6" width="80px" style="vertical-align: middle; border-right: groove 1px  #b0acac; font-weight: bold">High School / Other Equivalent Examination
                                            </td>
                                            <td style="padding: 5px; font-weight: bold">Passed/Appearing</td>
                                            <td style="padding: 5px; font-weight: bold">Board/University</td>
                                            <td style="padding: 5px; font-weight: bold">State of Qualifying Exam</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvhpassed" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlhpass">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="Passed">Passed</option>
                                                    <option value="Appearing">Appearing</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvhboard" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlhboard">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="UP BOARD">UP BOARD</option>
                                                    <option value="CBSE">CBSE</option>
                                                    <option value="CISCE">CISCE</option>
                                                    <option value="OTHER">OTHER</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvhpstate" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlhpstate">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="UP">UP</option>
                                                    <option value="OTHER">OTHER</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">Stream</td>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">College</td>
                                            <td style="padding: 5px; font-weight: bold; text-align: center;">Year of Passing</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvhstream" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlhstream">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="Science and Maths">Science and Maths</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txthcollege" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" style="text-transform: uppercase;" id="txthyp" /></td>
                                        </tr>
                                        <tr style="text-align: center">
                                            <td style="padding: 5px; text-align: center; font-weight: bold">Subjects</td>
                                            <td style="padding: 5px; font-weight: bold">Maximum Marks</td>
                                            <td style="padding: 5px; font-weight: bold">Obtained Marks</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txthsub" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txthmax" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txthobt" /></td>

                                        </tr>
                                        <tr>
                                            <td colspan="4" style="padding: 5px">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr style="text-align: center">
                                            <td class="alert alert-info" rowspan="6" style="vertical-align: middle; border-right: groove 1px  #b0acac; font-weight: bold">Intermediate / (10+2) Equivalent
                                            </td>
                                            <td style="padding: 5px; font-weight: bold">Passed/Appearing</td>
                                            <td style="padding: 5px; font-weight: bold">Board/University</td>
                                            <td style="padding: 5px; font-weight: bold">State of Qualifying Exam</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvipassed" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlipass">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="Passed">Passed</option>
                                                    <option value="Appearing">Appearing</option>
                                                </select>
                                                </div>
                                            </td>

                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dviboard" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddliboard">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="UP BOARD">UP BOARD</option>
                                                    <option value="CBSE">CBSE</option>
                                                    <option value="CISCE">CISCE</option>
                                                    <option value="OTHER">OTHER</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvipstate" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlipstate">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="UP">UP</option>
                                                    <option value="OTHER">OTHER</option>
                                                </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">Stream</td>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">College</td>
                                            <td style="padding: 5px; font-weight: bold; text-align: center;">Year of Passing</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvistream" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlistream">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="Science">Science</option>
                                                    <option value="Arts">Arts</option>
                                                    <option value="Commerce">Commerce</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txticollege" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" style="text-transform: uppercase;" id="txtiyp" /></td>

                                        </tr>
                                        <tr style="text-align: center">
                                            <td style="padding: 5px; font-weight: bold">Subject</td>
                                            <td style="padding: 5px; font-weight: bold">Maximum Marks</td>
                                            <td style="padding: 5px; font-weight: bold">Obtained Marks</td>

                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txtisub" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txtimax" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txtiobt" /></td>

                                        </tr>
                                        <tr>
                                            <td colspan="4" style="padding: 5px">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr style="text-align: center">
                                            <td class="alert alert-info" rowspan="6" style="vertical-align: middle; border-right: groove 1px  #b0acac; font-weight: bold">Diploma in any branch of Engg./Tech.
                                            </td>
                                            <td style="padding: 5px; font-weight: bold">Passed/Appearing</td>
                                            <td style="padding: 5px; font-weight: bold">Stream</td>
                                            <td style="padding: 5px; font-weight: bold">State of Qualifying Exam</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvdpassed" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddldpass">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="Passed">Passed</option>
                                                    <option value="Appearing">Appearing</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvdstream" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddldstream">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="3 year engineering/Technology">3 year engineering/Technology</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input type="text" class="col-md-4 form-control" id="dvdpstate" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddldpstate">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="UP">UP</option>
                                                    <option value="OTHER">OTHER</option>
                                                </select>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">Board/ University</td>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">College</td>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">Subjects</td>


                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvdboard" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddldboard">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="UPBTE">UPBTE</option>
                                                    <option value="Other">OTHER</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtdcollege" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtdsub" /></td>

                                        </tr>
                                        <tr style="text-align: center">
                                            <td style="padding: 5px; font-weight: bold; text-align: center;">Year of Passing</td>
                                            <td style="padding: 5px; font-weight: bold">Maximum Marks</td>
                                            <td style="padding: 5px; font-weight: bold">Obtained Marks</td>

                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" style="text-transform: uppercase;" id="txtdyp" /></td>

                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txtdmax" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txtdobt" /></td>

                                        </tr>
                                        <tr>
                                            <td colspan="4" style="padding: 5px">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr style="text-align: center">
                                            <td class="alert alert-info" rowspan="6" style="vertical-align: middle; border-right: groove 1px  #b0acac; font-weight: bold">Graduate in any discipline with Physics and Maths Subjects at Intermediate (10+2) or its equivalent.
                                            </td>
                                            <td style="padding: 5px; font-weight: bold">Passed/Appearing</td>
                                            <td style="padding: 5px; font-weight: bold">Stream</td>
                                            <td style="padding: 5px; font-weight: bold">State of Qualifying Exam</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvgpassed" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlgpass">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="Passed">Passed</option>
                                                    <option value="Appearing">Appearing</option>
                                                </select>
                                                </div>
                                            </td>

                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvgstream" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlgstream">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="Science">Science</option>
                                                    <option value="Arts">Arts</option>
                                                    <option value="Commerce">Commerce</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvgpstate" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlgpstate">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="UP">UP</option>
                                                    <option value="OTHER">OTHER</option>
                                                </select>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">Board/University</td>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">College</td>
                                            <td style="padding: 5px; text-align: center; font-weight: bold">Subjects</td>


                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <div class="form-inline">
                                                    <input type='text' class="col-md-4 form-control" id="dvgboard" disabled="disabled" />
                                                    &nbsp;  &nbsp;  &nbsp;
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlgboard">
                                                    <option value="-1" selected="selected">Select</option>
                                                    <option value="STATE">STATE</option>
                                                    <option value="Other">OTHER</option>
                                                </select>
                                                </div>
                                            </td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtgcollege" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtgsub" /></td>


                                        </tr>
                                        <tr style="text-align: center">
                                            <td style="padding: 5px; font-weight: bold; text-align: center;">Year of Passing</td>
                                            <td style="padding: 5px; font-weight: bold">Maximum Marks</td>
                                            <td style="padding: 5px; font-weight: bold">Obtained Marks</td>

                                        </tr>
                                        <tr>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" style="text-transform: uppercase;" id="txtgyear" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txtgmax" /></td>
                                            <td style="padding: 5px">
                                                <input type="text" class="form-control isvalid" id="txtgobt" /></td>

                                        </tr>
                                        <tr>
                                            <td colspan="4" style="padding: 15px">
                                                <div class="pull-right">
                                                    <button class="btn btn-warning shadow btn-lg bt-border" id="btnupdateEdu">Save/Update</button>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                 

                    <%--<div class="bhoechie-tab-content" id="documents">
                        <div class="card nav-border">
                            <div class="card-body">
                                <div class="table table-responsive" style="border: groove 1px">
                                    <table width="100%" class="table-striped">
                                        <tr>
                                            <td colspan="2" style="font-weight: bold; color: red">Upload Photograph and Signature
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; height: 10px; vertical-align: middle">
                                                <label class="col-form-label">Photograph</label>
                                            </td>
                                            <td>
                                                <div class="form-inline">

                                                    <input class="form-control col-md-4 isvalid" name="doc" id="photo" type="file" />
                                                    <div class="col-md-4">
                                                        <button class="btn btn-outline-success shadow IM" id="btnphoto">Upload Photo</button>
                                                    </div>
                                                    <div class="col-md-2" id="divph">
                                                        <a id="dvimg" class="btn btn-outline-primary shadow" target="_blank" href="a.jpg"><i class="fa fa-photo"></i>&nbsp;View Uploaded Photograph</a>
                                                    </div>
                                                </div>
                                                <hr />
                                            </td>

                                        </tr>

                                        <tr>
                                            <td style="text-align: right; height: 10px; vertical-align: middle">
                                                <label class="col-form-label">Signature</label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="form-control col-md-4 isvalid" name="doc" id="Sign" type="file" />
                                                    <div class="col-md-4">
                                                        <button class="btn btn-outline-success shadow IM" id="btnsign">Upload Sign</button>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <a id="dvsign" class="btn btn-outline-primary shadow" target="_blank" href="1.jpeg"><i class="fa fa-photo"></i>&nbsp;View uploaded Signature</a>
                                                    </div>
                                                </div>
                                                <hr />
                                            </td>

                                        </tr>
                                        <tr>
                                            <td style="text-align: right; height: 10px; vertical-align: middle">
                                                <label class="col-form-label">Left Thumb Impression</label>
                                            </td>
                                            <td>
                                                <div class="form-inline">
                                                    <input class="form-control col-md-4 isvalid" name="doc" id="Thumbimpression" type="file" />
                                                    <div class="col-md-4">
                                                        <button class="btn btn-outline-success shadow IM" id="btnthumb">Upload Left Thumb Impression</button>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <a id="dvthumb" class="btn btn-outline-primary shadow" target="_blank" href="1.jpeg"><i class="fa fa-photo"></i>&nbsp; View uploaded Thumb impression</a>
                                                    </div>

                                                </div>
                                            </td>

                                        </tr>
                                    </table>
                                    <hr />

                                </div>

                            </div>
                            <hr />
                            <div class="container">
                                <div class="col-md-12">
                                    <div style="color: blue; text-align: center; border-spacing: 1px; font-size: 16px;">
                                        <span class="alert alert-info shadow">
                                            <i class="fa fa-globe"></i>&nbsp;&nbsp;
                        Instruction for uploading Photograph,Signature and Thumb Impression
                                        </span>
                                    </div>
                                    <hr />
                                </div>
                                <div>
                                    <div class="table table-responsive">
                                        <table class="table-bordered table-striped shadow" width="100%">
                                            <tr id="itp">
                                                <td><a href="#" style="color: blue; text-decoration: blink">
                                                    <i class="fa fa-hand-o-right shadow"></i>&nbsp;&nbsp;
                                <u>Instruction for uploading photograph</u>
                                                </a>
                                                </td>
                                            </tr>
                                            <tr id="its">
                                                <td>
                                                    <a href="#" style="color: red; text-decoration: blink">
                                                        <i class="fa fa-hand-o-right shadow"></i>&nbsp;&nbsp;
                                <u>Instruction for uploading Signature
                                </u>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr id="itt">
                                                <td>
                                                    <a href="#" style="color: green; text-decoration: blink">
                                                        <i class="fa fa-hand-o-right shadow"></i>&nbsp;&nbsp;
                                    <u>Instruction for uploading Thumb Impression</u>
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <hr />
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    <%--admitcard region--%>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="updatemodal" tabindex="-1" role="dialog" data-backrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updatemodalhead"></h5>
                </div>
                <div class="modal-body" id="txtmsg">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary shadow" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <script src="../plug/jquery/jquery.js"></script>
    <script src="../plug/jquery/jquery.cookie.js"></script>
    <script src="data_script/correction.js?V=1.0.1"></script>
    <script src="data_script/getall.js?v=1.0"></script>
    <script src="data_script/pay.js?v=1.0"></script>
    <script src="data_script/step.js?v=1.0"></script>

    <script src="data_script/event.js?v=1.0"></script>
    <script src="html2canvas.js?v=1.0"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js" integrity="sha512-BNaRQnYJYiPSqHHDb58B0yaPfCu+Wgds8Gp/gU33kqBtgNS4tSPHuGibyoeqMV/TJlSKda6FXzoEyYGjTe+vXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="pdf.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>


    <script src="data_script/admitcard.js?v=1.0.2"></script>
    <script>
        $(document).ready(function () {
            $('#tbladdress').hide();
            $('#tblqualification').hide();
            $('#tblbasic').hide();
            $('#documents').hide();
            $('#ddlcorrection').bind('change', function () {

                if ($('#ddlcorrection').val() === '1') {
                    $('#tblbasic').show();
                    $('#tbladdress').hide();
                    $('#tblqualification').hide();
                    $('#documents').hide();

                }
                else if ($('#ddlcorrection').val() === '2') {
                    $('#tbladdress').show();
                    $('#tblbasic').hide();
                    $('#tblqualification').hide();
                    $('#documents').hide();
                }
                else if ($('#ddlcorrection').val() === '3') {
                    $('#tblqualification').show();
                    $('#tbladdress').hide();
                    $('#tblbasic').hide();
                    $('#documents').hide();
                }

                else if ($('#ddlcorrection').val() === '4') {
                    $('#tblqualification').hide();
                    $('#tbladdress').hide();
                    $('#tblbasic').hide();
                    $('#documents').show();
                }
            });
        });
    </script>
    <script>
        $('#btnlogout').click(function () {
            eraseCookie('dataString');
            window.location = 'https://iertentrance.in/index.aspx';
        });
    </script>
    <script>
        function htmlEncode(value) {
            return $('<div />').text(value)
                .html();
        }
        $(function () {
            $(document).ready(function () {
                //let finalURL =
                //    'http://chart.googleapis.com/chart?cht=qr&chl=' +
                //    htmlEncode('http://iertentrance.in/admitcard.aspx?application_no=' + $('#txtapplno').html()) +
                //    '&chs=160x160&chld=L|0'
                //$('.qr-code').attr('src', finalURL);
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#txtdob").attr("disabled", "disabled");

            $("#txtdob").removeAttr("disabled", "disabled");

            $("#txtdob").datepicker({
                dateFormat: 'dd/mm/yy',
                changeMonth: true,
                changeYear: true,
                yearRange: "-100:+100",
                maxDate: new Date(),
                onSelect: function () {
                    debugger;
                    var date = $("#txtdob").val();
                    date = date.split("/").reverse().join("/");

                    var date2 = $("#txtdob").val();
                    date2 = date.split("-").reverse().join("-");


                    // specify the birthdate as a string in the format "YYYY-MM-DD"
                    const birthdate = date2;

                    // create a new Date object based on the birthdate
                    const birthdateObj = new Date(birthdate);

                    // get the current date
                    const currentDate = new Date("01/07/2023");

                    // calculate the difference in milliseconds between the two dates
                    const diffMs = currentDate.getTime() - birthdateObj.getTime();

                    // convert the difference to years
                    const age = Math.floor(diffMs / (1000 * 60 * 60 * 24 * 365));

                    //console.log(age1); // output: the person's age as of today

                    ////var userBirthdate = "08/04/1990";
                    ////var age = calculateAge(userBirthdate);
                    ////console.log(age); // Output: 33 (if current year is 2023)

                    ////const dob = '1990-05-10';

                    ////// Calculate the age based on the current date
                    ////const age = new Date().getFullYear() - new Date(dob).getFullYear();

                    ////console.log(`You are ${age} years old.`);

                    ////var db = $("#txtdob").val();

                    //var dob = new Date(db);

                    ////calculate month difference from current date in time
                    //var month_diff = Date.now() - dob.getTime();

                    ////convert the calculated difference in date format
                    //var age_dt = new Date(month_diff);

                    ////extract year from date    
                    //var year = age_dt.getUTCFullYear();

                    ////now calculate the age of the user
                    //var age = Math.abs(year - 1970);
                    var mode = $("#ddlcourse").val();
                    debugger;
                    if (mode == 1 && age < 14) {
                        $('#agehead').html('Information');
                        $('#agetxtmsg').html('Age criteria not fulfilled');
                        $('#age').modal();
                        $('#btnReg').hide();
                    }
                    else if (mode == 2 && age < 14) {
                        $('#agehead').html('Information');
                        $('#agetxtmsg').html('Age criteria not fulfilled.');
                        $('#age').modal();
                        $('#btnReg').hide();
                    }
                    else if (mode == 3 && age < 18) {
                        $('#agehead').html('Information');
                        $('#agetxtmsg').html('Age criteria not fulfilled.');
                        $('#age').modal();
                        $('#btnReg').hide();
                    }
                    else if (mode == '-1') {
                        $('#agehead').html('Information');
                        $('#agetxtmsg').html('Age criteria not fulfilled.');
                        $('#age').modal();
                        $('#btnReg').hide();
                    }
                    else {
                        $('#btnReg').show();
                    }
                }


            });

        });
    </script>
</asp:Content>

