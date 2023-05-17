<%@ Page Language="C#" AutoEventWireup="true" CodeFile="application.aspx.cs" MasterPageFile="~/masterpages/candidate.master" Inherits="application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            $("div.bhoechie-tab-menu>div.list-group>a").click(function (e) {
                e.preventDefault();
                $(this).siblings('a.active').removeClass("active");
                $(this).addClass("active");
                var index = $(this).index();
                $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
                $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
            });
        });
    </script>
    <style>
        #tbldetails td, th {
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab-container" style="padding-bottom: 20px; padding-top: 10px">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu nprintdiv">
            <div class="list-group">
                <a href="#" class="list-group-item active text-center">
                    <h4 class="glyphicon glyphicon-user"></h4>
                    <br />
                    Basic Details
                </a>
                <a href="#" class="list-group-item text-center">
                    <h4 class="glyphicon glyphicon-home"></h4>
                    <br />
                    Address
                </a>
                <a href="#" class="list-group-item text-center">
                    <h4 class="glyphicon glyphicon-book"></h4>
                    <br />
                    Educational Qualifications
                </a>
                <a href="#" class="list-group-item text-center">
                    <h4 class="glyphicon glyphicon-picture"></h4>
                    <br />
                    Photograph and Signature
                </a>
                <a href="#" class="list-group-item text-center">
                    <h4 class="glyphicon glyphicon-file"></h4>
                    <br />
                    Center Choice
                </a>
                <a href="#" class="list-group-item text-center">
                    <h4 class="glyphicon glyphicon-file"></h4>
                    <br />
                    Print Application Form
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab">
                <div class="bhoechie-tab-content active">
                    <div class="card nav-border">
                        <div class="card-body">
                            <div class="table table-responsive" style="border: groove 1px">
                                <table width="100%" class="table-striped">
                                    <tr>
                                        <td style="text-align: right; height: 10px; vertical-align: middle">
                                            <label class="col-form-label" style="font-weight: bold">First Name</label>
                                        </td>
                                        <td style="height: 10px;">
                                            <div class="form-group">

                                                <div class="form-control col-md-8" style="text-transform: uppercase;" disabled="disabled" id="txtfirstname"></div>
                                            </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Middle Name</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control col-md-8" style="text-transform: uppercase;" disabled="disabled" id="txtminame"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Last Name</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control col-md-8" style="text-transform: uppercase;" disabled="disabled" id="txtlname"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Father Name</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtfname"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Mother Name</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control" style="text-transform: uppercase;" id="txtmname"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Date of Birth</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div type="date" class="form-control" id="txtdob"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Contact No.</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control col-md-8" id="txtphone"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Email Id</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control col-md-8" id="txtmail"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Gender</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <select class="form-control col-md-8" id="ddlgender" style="text-transform: uppercase;">
                                                    <option value="-1">--Select Gender--</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Category</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <select class="form-control col-md-8" style="text-transform: uppercase;" id="ddlcat">
                                                    <option value="-1">-- Select --</option>
                                                    <option value="General">General</option>
                                                    <option value="OBC">OBC</option>
                                                    <option value="SC">SC</option>
                                                    <option value="ST">ST</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">EWS</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <select class="form-control col-md-8" style="text-transform: uppercase;" id="ddlews">
                                                    <option value="-1">-- Select --</option>
                                                    <option value="YES">Yes</option>
                                                    <option value="NO">No</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Sub Category</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <select class="form-control col-md-8" style="text-transform: uppercase;" id="ddlsubcat">
                                                    <option value="-1">-- Select --</option>
                                                    <option value="FF">FF</option>
                                                    <option value="MW">MW</option>
                                                    <option value="PH">PH</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Caste</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtcaste"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Nationality</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtnat"></div>
                                            </div>
                                        </td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bhoechie-tab-content">

                    <div class="card nav-border">
                        <div class="card-body">
                            <div class="table table-responsive" style="border: groove 1px">
                                <table width="100%" class="table-striped">
                                    <tr>
                                        <td colspan="2" style="font-weight: bold; color: red">Permanant Address Details
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Address Line 1</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtadd1" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtadd1"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Address Line 2</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtadd2" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtadd2"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Address Line 3</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtadd3" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtadd3"></div>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">State</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <label for="ddlcity" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <select class="form-control col-md-8 fom-inline" id="ddlstates">
                                                    <option>-- Select State --</option>
                                                </select>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">City</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="ddlcity" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div list="city" class="form-control col-md-8 fom-inline" style="text-transform: uppercase;" id="ddlcity">
                                                    <datalist id="city">
                                                        <option></option>
                                                    </datalist>
                                                </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Pincode</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtpincode" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" type="number" id="txtpincode"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="font-weight: bold; color: red">Postal Address Details
                                        </td>

                                    </tr>

                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Address Line 1</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtadd1" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtpostadd1"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Address Line 2</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtadd2" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtpostadd2"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Address Line 3</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtadd3" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" style="text-transform: uppercase;" id="txtpostadd3"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">State</label>
                                        </td>
                                        <td>
                                            <div class="form-group">

                                                <label for="ddlcity" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <select class="form-control col-md-8" id="ddlpoststates">
                                                    <option value="-1">-- Select State --</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">City</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="ddlcity" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div list="postcity" class="form-control col-md-8 fom-inline" style="text-transform: uppercase;" id="ddlpostcity">
                                                    <datalist id="postcity">
                                                        <option></option>
                                                    </datalist>
                                                </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; vertical-align: middle">
                                            <label class="control-label" style="font-weight: bold">Pincode</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="txtpincode" class="col-sm-4">
                                                    <span class="h6 small bg-white text-muted pt-1 pl-2 pr-2"></span>
                                                </label>
                                                <div class="form-control col-md-8" type="number" id="txtpostpincode"></div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- train section -->
                <div class="bhoechie-tab-content">
                    <div class="card nav-border">
                        <div class="card-body">

                            <div class="table table-responsive " style="border: groove 1px">
                                <table width="100%" style="padding: 50px" class="table-striped">

                                    <tr style="text-align: center">
                                        <td colspan="4" style="font-weight: bold; color: red; font-weight: bold">&nbsp;&nbsp;&nbsp;Educational Qualifications
                                        </td>
                                    </tr>
                                    <tr style="text-align: center">
                                        <td rowspan="4" style="vertical-align: middle; border-right: solid 1px; font-weight: bold">High School
                                        </td>
                                        <td style="padding: 5px; font-weight: bold">College/Board</td>
                                        <td style="padding: 5px; font-weight: bold">Subjects</td>
                                        <td style="padding: 5px; font-weight: bold">year of passing</td>

                                    </tr>
                                    <tr>

                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txthboard"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txthsub"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txthyp"></div>
                                        </td>

                                    </tr>
                                    <tr style="text-align: center">

                                        <td style="padding: 5px; font-weight: bold">Maximum Marks</td>
                                        <td style="padding: 5px; font-weight: bold">Obtained Marks</td>

                                    </tr>
                                    <tr>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txthmax"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txthobt"></div>
                                        </td>
                                        <td style="padding: 5px">
                                    </tr>

                                    <tr>
                                        <td colspan="4" style="padding: 5px"></td>
                                    </tr>
                                    <tr class="a" style="text-align: center">
                                        <td rowspan="4" style="vertical-align: middle; border-right: solid 1px; font-weight: bold">InterMediate
                                        </td>
                                        <td style="padding: 5px; font-weight: bold">College/Board</td>
                                        <td style="padding: 5px; font-weight: bold">Subjects</td>
                                        <td style="padding: 5px; font-weight: bold">year of passing</td>

                                    </tr>
                                    <tr class="a">

                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtiboard"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtisub"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtiyp"></div>
                                        </td>

                                    </tr>
                                    <tr class="a" style="text-align: center">

                                        <td style="padding: 5px; font-weight: bold">Maximum Marks</td>
                                        <td style="padding: 5px; font-weight: bold">Obtained Marks</td>

                                    </tr>
                                    <tr class="a">
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtimax"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtiobt"></div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding: 5px"></td>
                                    </tr>
                                    <tr class="b" style="text-align: center">
                                        <td rowspan="6" style="vertical-align: middle; border-right: solid 1px; font-weight: bold">Diploma/Graduation
                                        </td>
                                        <td style="padding: 5px; font-weight: bold">Type</td>
                                        <td style="padding: 5px; font-weight: bold">College/University</td>
                                        <td style="padding: 5px; font-weight: bold">Branch</td>
                                    </tr>
                                    <tr class="b">

                                        <td style="padding: 5px">
                                            <select class="form-control" id="ddlgtype">
                                                <option value="-1">-- Select --</option>
                                                <option value="1">Diploma</option>
                                                <option value="1">Graduation</option>
                                            </select>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtgboard"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtgbranch"></div>
                                        </td>

                                    </tr>
                                    <tr class="a" style="text-align: center">
                                        <td style="padding: 5px; font-weight: bold">Subjects</td>
                                        <td style="padding: 5px; font-weight: bold">Maximum Marks</td>
                                        <td style="padding: 5px; font-weight: bold">Obtained Marks</td>

                                    </tr>
                                    <tr class="b">
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtgsub"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtgmax"></div>
                                        </td>
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtgobt"></div>
                                        </td>
                                    </tr>
                                    <tr class="b" style="text-align: center">
                                        <td style="padding: 5px; font-weight: bold">year of passing</td>


                                    </tr>
                                    <tr class="b">
                                        <td style="padding: 5px">
                                            <div type="text" class="form-control" id="txtgyear"></div>
                                        </td>

                                    </tr>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="bhoechie-tab-content">
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
                                            <label class="col-form-label" style="font-weight: bold">Photograph</label>
                                        </td>
                                        <td>
                                            <div class="form-inline">

                                                <div class="col-md-2">
                                                    <img id="dvimg" alt="" src="1.jpeg" style="height: 120px; width: 120px">
                                                </div>
                                            </div>

                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="text-align: right; height: 10px; vertical-align: middle">
                                            <label class="col-form-label" style="font-weight: bold">Signature</label>
                                        </td>
                                        <td>
                                            <div class="form-inline">

                                                <div class="col-md-2">
                                                    <img id="dvsign" alt="" src="1.jpeg" style="height: 50px; width: 120px">
                                                </div>
                                            </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="text-align: right; height: 10px; vertical-align: middle">
                                            <label class="col-form-label" style="font-weight: bold">Thumb Impression</label>
                                        </td>
                                        <td>
                                            <div class="form-inline">

                                                <div class="col-md-2">
                                                    <img id="dvthumb" alt="" src="1.jpeg" style="height: 50px; width: 120px">
                                                </div>

                                            </div>
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                        <h1 class="glyphicon glyphicon-credit-card" style="font-size: 12em; color: #55518a"></h1>
                        <h2 style="margin-top: 0; color: #55518a">Cooming Soon</h2>
                        <h3 style="margin-top: 0; color: #55518a">Print Form</h3>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <div class="card">
                        <div class="card-body">
                            <div class="table table-responsive">
                                <table class="table-bordered">
                                    <tr>
                                        <td>Application Number</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Candidate Name</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Father's Name</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Mother's Name</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Date of Birth</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Nationality</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Parent's Domicile</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Category</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Sub Category</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>If Parents Employed in</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Mobile No</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Aadhar No.</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Email Address</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Fee Transaction No.</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Fee Transaction Date and Time</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Fee Submitted</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Examination Center City Name 1</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Examination Center City Name 2</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Examination Center City Name 3</td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <script src="../plug/jquery/jquery.js"></script>
    <script src="../plug/jquery/jquery.cookie.js"></script>
    <script src="data_script/getall.js"></script>

</asp:Content>
