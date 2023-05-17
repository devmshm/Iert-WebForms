<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/masterpages/candidate.master" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #tbldetails {
            empty-cells: hide;
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
<div class="container">
        <marquee class=" nprintdiv" width="100%" style="font-weight: bold; font-size: 20px;  text-align: center" direction="left"><span style="color: red;">Candidate must complete all the steps otherwise application form will consider as Incomplete and he/she will not be able to download/print application form.</span><br/>
	<span style="color:blue;">Note&nbsp;<sup>*</sup>&nbsp;:&nbsp;</span><span>If you already paid and fee status is showing failure/aborted, kindly mail us your fee receipt and screenshot of successful transaction  on <a href="#">helpdesk@iertentrance.in</a> from your registered Email ID.</span>
	</marquee>
	</div>
    <hr />
    <div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab-container" style="padding-bottom: 20px; padding-top: 10px">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu nprintdiv">
                <div class="list-group">
                    <a href="#" class="list-group-item  active text-center" id="basiclist">
                        <h4 class="glyphicon glyphicon-user"></h4>
                        <br />
                        Basic Details
                    </a>
                    <a href="#" class="list-group-item text-center shadow" id="addresslist">
                        <h4 class="glyphicon glyphicon-home"></h4>
                        <br />
                        Address Details
                    </a>
                    <a href="#" class="list-group-item text-center shadow" id="edulist">
                        <h4 class="glyphicon glyphicon-book"></h4>
                        <br />
                        Educational Details
                    </a>
                    <a href="#" class="list-group-item text-center shadow" id="doclist">
                        <h4 class="glyphicon glyphicon-picture"></h4>
                        <br />
                        Documents Upload
                    </a>
                    <a href="#" class="list-group-item text-center shadow" id="centerlist">
                        <h4 class="fa fa-institution"></h4>
                        <br />
                        Center Choice
                    </a>

                  
                    <a href="#" class="list-group-item text-center shadow" id="pay">
                        <h4 class="fa fa-rupee"></h4>
                        <br />
                        Fee Payment
                    </a>
                   <a href="#" class="list-group-item text-center shadow" id="finallist">
                        <h4 class="glyphicon glyphicon-file"></h4>
                        <br />
                        <div id="apptext"></div>
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
                    <div class="bhoechie-tab-content active" id="basic">
                        <div class="card nav-border">
                            <div class="card-body">
                                <div class="table table-responsive" style="border: groove 1px">
                                    <table width="100%" class="table-striped">
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
                                                    <input class="form-control isvalid" type="text" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtfname" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 250px; vertical-align: middle">
                                                <label class="control-label">Mother Name <sup style="color: red">&nbsp;*</sup></label>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <input type="text" class="form-control isvalid" onkeypress="return onlyAlphabets(event);" style="text-transform: uppercase;" id="txtmname" />
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
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlemp">
                                                    <option value="-1">Select</option>
                                                    <option value="UP Govt">UP Govt</option>
                                                    <option value="Central Govt">Central Govt</option>
                                                    <option value="Private Sector">Private Sector</option>
                                                    <option value="Business">Business</option>
                                                    <option value="Other">Other</option>
                                                </select>
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
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlposted">
                                                    <option value="-1">Select</option>
                                                    <option value="UP">UP</option>
                                                    <option value="Other Than UP">Other Than UP</option>
                                                    <option value="Not Applicable">Not Applicable</option>

                                                </select>
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
                                                <select class="form-control-lg col-md-4 isddlvalid" style="text-transform: uppercase;" id="ddlempscale">
                                                    <option value="-1">Select</option>
                                                    <option value="0 to 100000">0 - 100000</option>
                                                    <option value="100000 - 250000">100000 - 250000</option>
                                                    <option value="250000 - 500000">250000 - 500000</option>
                                                    <option value="500000 - 800000">500000 - 800000</option>
                                                    <option value="Above 800000 ">Above 800000 </option>
                                                </select>
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
                                            <td colspan="2" style="padding: 15px">
                                                <br />
                                                <div class="pull-right" style="margin-right: 2em">
                                                    <button class="btn btn-warning btn-lg shadow bt-border btn-theme4" id="btnupdatebasic">Save /Update</button>
                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer">
                            </div>
                        </div>
                        <hr />
                        <br />
                    </div>
                    <div class="bhoechie-tab-content" id="address">
                        <div class="card nav-border">
                            <div class="card-body">
                                <div class="table table-responsive" style="border: groove 1px">
                                    <table width="100%" class="table-striped">
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
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="pull-right">
                                    <button class="btn btn-warning btn-lg shadow btn-theme4 bt-border" id="btnupdateAdd">Save / Update</button>
                                    <%--<button class="btn btn-warning shadow bt-border" id="btnupdateAdd">Save/Update</button>--%>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="bhoechie-tab-content" id="educational">
                        <div class="card nav-border">
                            <div class="card-body">
                                <div class="table table-responsive " style="border: groove 1px">
                                    <table width="100%" style="padding: 50px" class="table-striped">

                                        <tr style="text-align: center">
                                            <td colspan="4" style="font-weight: bold; color: red; font-weight: bold">&nbsp;&nbsp;&nbsp;Educational Qualifications
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
                                    </table>
                                </div>

                            </div>
                            <div class="card-footer">
                                <div class="pull-right">
                                    <button class="btn btn-warning shadow btn-lg bt-border" id="btnupdateEdu">Save/Update</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bhoechie-tab-content" id="documents">
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
                    </div>
                    <div class="bhoechie-tab-content" id="centerpref">
                        <div class="card">
                            <div class="card-body">
                                <div class="table table-responsive" style="border: groove 1px">
                                    <table width="100%" style="text-align: center" class="table-striped shadow" id="center">
                                        <thead style="font-weight: bold; background-color: lightgray; height: 50px">
                                            <tr style="vertical-align: middle">
                                                <td>Preference</td>
                                                <td>Selected City</td>
                                                <td>Update</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="padding: 5px; font-weight: bold">Select Examination City 1</td>
                                                <td>
                                                    <div class="control-label" id="lblcity1"></div>
                                                </td>
                                                <td style="padding: 5px">
                                                    <select class="form-control-lg prefcenter isddlvalid" id="ddlcenter1">
                                                        <option value="-1">-- Select City--</option>
                                                        <option value="Allahabad">Allahabad</option>
                                                        <option value="Varanasi">Varanasi</option>

                                                        <option value="Gorakhpur">Gorakhpur</option>
                                                        <option value="Ayodhya">Ayodhya</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; font-weight: bold">Select Examination City 2</td>
                                                <td>
                                                    <div class="control-label dc" id="lblcity2"></div>
                                                </td>
                                                <td style="padding: 5px">
                                                    <select class="form-control-lg prefcenter isddlvalid" id="ddlcenter2">
                                                        <option value="-1">-- Select City--</option>
                                                        <option value="Allahabad">Allahabad</option>
                                                        <option value="Varanasi">Varanasi</option>

                                                        <option value="Gorakhpur">Gorakhpur</option>
                                                        <option value="Ayodhya">Ayodhya</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; font-weight: bold">Select Examination City 3</td>
                                                <td>
                                                    <div class="control-label" id="lblcity3"></div>
                                                </td>
                                                <td style="padding: 5px">
                                                    <select class="form-control-lg prefcenter isddlvalid" id="ddlcenter3">
                                                        <option value="-1">-- Select City--</option>
                                                        <option value="Allahabad">Allahabad</option>
                                                        <option value="Varanasi">Varanasi</option>

                                                        <option value="Gorakhpur">Gorakhpur</option>
                                                        <option value="Ayodhya">Ayodhya</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px; font-weight: bold">Select Examination City 4</td>
                                                <td>
                                                    <div class="control-label" id="lblcity4"></div>
                                                </td>
                                                <td style="padding: 5px">
                                                    <select class="form-control-lg prefcenter isddlvalid" id="ddlcenter4">
                                                        <option value="-1">-- Select City--</option>
                                                        <option value="Allahabad">Allahabad</option>
                                                        <option value="Varanasi">Varanasi</option>

                                                        <option value="Gorakhpur">Gorakhpur</option>
                                                        <option value="Ayodhya">Ayodhya</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="pull-right" style="margin-right: 6em">
                                    <button class="btn btn-warning btn-lg shadow bt-border" id="btncenter">Save/Update</button>
                                </div>
                            </div>
                        </div>

                    </div>

                   
                    <div class="bhoechie-tab-content" id="payment">
                        <div class="card">
                            <div class="card-body">
                                <div class="table table-responsive">
                                    <table width="100%" id="tblpay" class="table-bordered">
										<tr>
                                            <td colspan="2" style="color:white;text-align:center" class="bg-secondary">Fee Payment
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td>Application No
                                            </td>
                                            <td>
                                                <div id="appnopay"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Amount</td>
                                            <td>1350</td>
                                        </tr>
										<tr>
                                            <td>Status</td>
                                            <td>
                                                <div id="paystatus"></div>
                                            </td>
                                        </tr>
<tr>

                                          
                                        </tr>
                                        <tr>

                                            <td colspan="2" style="padding: 10px">
                                                <div style="text-align: center">
                                                    <a id="btnpay" class="btn btn-primary btn-lg shadow" href="getpaydetails.aspx">Pay Now</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
									 <br />
                                    <hr />
                                    <table width="100%" id="tblallpay" class="table-bordered border-success" style="text-align: center">
                                         <tr>
                                            <td colspan="5" style="color:white;text-align:center" class="bg-secondary">Transaction Details
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td colspan="5"></td>
                                        </tr>
                                        <tr class="bg-info">
                                            <td>#</td>
                                            <td>Application No</td>
                                            <td>Status</td>
                                            <td>Reference No</td>
                                            <td>Date</td>
                                        </tr>
                                    </table>
                                    <hr />
                                    

                                        <div style="text-align: center">
                                            <span style="color: red;">Note&nbsp;<sup>*</sup>&nbsp;:&nbsp;</span><span>If you already paid and fee status is showing failure/aborted, kindly mail us your fee receipt and screenshot of successful transaction  on <a href="#">helpdesk@iertentrance.in</a> from your registered Email ID.</span>
                                        </div>

                                </div>
                               
                            </div>
                        </div>
                    </div>
					<div class="bhoechie-tab-content" id="preview">
                        <div class="card">
                            <div class="card-header">
                                <div>
                                    <div class="pull-left">
                                        Status : <span id="frmstatus"></span>
                                    </div>
                                    <div class="pull-right nprintdiv">
                                        <div class="btn btn-success btn-lg shadow" onclick="rePrint();">
                                            <i class="fa fa-print"></i>&nbsp;Print
                                        </div>
                                    </div>
                                </div>
                                </div>
                                <div class="card-body">
                                    <div class="table table-responsive" style="border: groove 1px">
                                        <table width="100%" id="tbldetails" class="table-striped tbldetails">
                                            <tr style="vertical-align: middle">
                                                <td>Application Number</td>
                                                <td colspan="2">
                                                    <div id="dpappno"></div>
                                                </td>
                                                <td rowspan="5" style="text-align: center; width: 100px">
                                                    <img id="dvpimg" src="1.jpeg" height="120px" width="120px" />
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
                                                <td colspan="2" style="vertical-align: middle">
                                                    <input type="checkbox" class="isddlvalid" id="chkfinal" />&nbsp;I certify that I have filled the form myself and I have made all the entries in this form. No request shall be made for any change what so ever.</td>
                                                <td style="text-align: center;">
                                                    <img id="dvpsign" src="1.jpeg" height="50px" width="120px" /><br />
                                                    (Signature)
                                                </td>
                                                <td style="text-align: center; width: 50px">
                                                    <img id="dvpthumb" src="1.jpeg" height="50px" width="120px" />
                                                    <br />
                                                    (Thumb)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" style="vertical-align: middle; padding: 5px">
                                                    <div class="pull-right nprintdiv">
                                                        <button id="finalsubmit" disabled="disabled" class="btn btn-outline-primary btn-lg btn-flat shadow nav-border">Final Submit</button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <%--<table width="100%" id="tblpdetails" class="table-striped">
                                        <tr style="vertical-align: middle">
                                            <td>Application Number</td>
                                            <td colspan="2">
                                                <div id="dpappnop"></div>
                                            </td>
                                            <td rowspan="5" style="text-align: center; width: 100px">
                                                <img id="dvpimgp" src="1.jpeg" height="120px" width="120px" />
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Course</td>
                                            <td colspan="2">
                                                <div id="dpcoursep"></div>
                                            </td>

                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Candidate Name</td>
                                            <td colspan="2">
                                                <div id="dpcnamep"></div>
                                            </td>

                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Father's Name</td>
                                            <td colspan="2">
                                                <div id="dpfnamep"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Mother's Name</td>
                                            <td colspan="2">
                                                <div id="dpmnamep"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Date of Birth</td>
                                            <td colspan="3">
                                                <div id="dpdobp"></div>
                                            </td>

                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Gender</td>
                                            <td colspan="3">
                                                <div id="dpgenp"></div>
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
                                                <div id="dpdomicilep"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Category</td>
                                            <td colspan="3">
                                                <div id="dpcatp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Sub Category</td>
                                            <td colspan="3">
                                                <div id="dpsubcatp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Religion</td>
                                            <td colspan="3">
                                                <div id="dpreligionp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>EWS</td>
                                            <td colspan="3">
                                                <div id="dpewsp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>If Parents Employed in</td>
                                            <td colspan="3">
                                                <div id="dpempp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Mobile No</td>
                                            <td colspan="3">
                                                <div id="dpmobilep"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Aadhar No.</td>
                                            <td colspan="3">
                                                <div id="dpadharp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Email Address</td>
                                            <td colspan="3">
                                                <div id="dpmailp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Examination Center City Name 1</td>
                                            <td colspan="3">
                                                <div id="dpcity1p"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Examination Center City Name 2</td>
                                            <td colspan="3">
                                                <div id="dpcity2p"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Examination Center City Name 3</td>
                                            <td colspan="3">
                                                <div id="dpcity3p"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Examination Center City Name 3</td>
                                            <td colspan="3">
                                                <div id="dpcity4p"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td colspan="6" style="text-align: left; font-weight: bold">Permanent address</td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Address</td>
                                            <td>
                                                <div id="txtpadd1p"></div>
                                            </td>
                                            <td>State</td>
                                            <td>
                                                <div id="ddlpstatep"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>City</td>
                                            <td>
                                                <div id="ddlpcityp"></div>
                                            </td>
                                            <td>Pincode</td>
                                            <td>
                                                <div id="txtppincodep"></div>
                                            </td>
                                        </tr>

                                        <tr style="vertical-align: middle">
                                            <td colspan="6" style="text-align: left; font-weight: bold">Postal address</td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>Address</td>
                                            <td>
                                                <div id="txtppostadd1p"></div>
                                            </td>
                                            <td>State</td>
                                            <td>
                                                <div id="ddlpoststatep"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td>City</td>
                                            <td>
                                                <div id="ddlppostcityp"></div>
                                            </td>
                                            <td>Pincode</td>
                                            <td>
                                                <div id="txtppostpincodep"></div>
                                            </td>
                                        </tr>
                                        <%-- <tr style="vertical-align: middle">
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
                                            <td>State of Qualifying</td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div id="dphcollegep"></div>
                                            </td>
                                            <td>
                                                <div id="dphpassp"></div>
                                            </td>
                                            <td>
                                                <div id="dphboardp"></div>
                                            </td>
                                            <td>
                                                <div id="dphstatep"></div>
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
                                                <div id="dphsubp"></div>
                                            </td>
                                            <td>
                                                <div id="dphypp"></div>
                                            </td>
                                            <td>
                                                <div id="dphmmp"></div>
                                            </td>
                                            <td>
                                                <div id="dphomp"></div>
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
                                                <div id="dpicollegep"></div>
                                            </td>
                                            <td>
                                                <div id="dpipassp"></div>
                                            </td>
                                            <td>
                                                <div id="dpiboardp"></div>
                                            </td>
                                            <td>
                                                <div id="dpistatep"></div>
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
                                                <div id="dpisubp"></div>
                                            </td>
                                            <td>
                                                <div id="dpiypp"></div>
                                            </td>
                                            <td>
                                                <div id="dpimmp"></div>
                                            </td>
                                            <td>
                                                <div id="dpiomp"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="text-align: left; font-weight: bold">Diploma</td>
                                        </tr>
                                        <tr>
                                            <td>College</td>
                                            <td>Passed/Appearing</td>
                                            <td>Branch</td>
                                            <td>State of Qualifying</td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div id="dpdcollegep"></div>
                                            </td>
                                            <td>
                                                <div id="dpdpassp"></div>
                                            </td>
                                            <td>
                                                <div id="dpdbranchp"></div>
                                            </td>
                                            <td>
                                                <div id="dpdstatep"></div>
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
                                                <div id="dpdsubp"></div>
                                            </td>
                                            <td>
                                                <div id="dpdypp"></div>
                                            </td>
                                            <td>
                                                <div id="dpdmmp"></div>
                                            </td>
                                            <td>
                                                <div id="dpdomp"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="text-align: left; font-weight: bold">Graduation</td>
                                        </tr>
                                        <tr>
                                            <td>College</td>
                                            <td>Passed/Appearing</td>
                                            <td>Branch</td>
                                            <td>State of Qualifying</td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div id="dpgcollegep"></div>
                                            </td>
                                            <td>
                                                <div id="dpgpassp"></div>
                                            </td>
                                            <td>
                                                <div id="dpgbranchp"></div>
                                            </td>
                                            <td>
                                                <div id="dpgstatep"></div>
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
                                                <div id="dpgsubp"></div>
                                            </td>
                                            <td>
                                                <div id="dpgypp"></div>
                                            </td>
                                            <td>
                                                <div id="dpgmmp"></div>
                                            </td>
                                            <td>
                                                <div id="dpgomp"></div>
                                            </td>
                                        </tr>
                                        <tr style="vertical-align: middle">
                                            <td colspan="2" style="vertical-align: middle">I certify that I have filled the form myself and I have made all the entries in this form. No request shall be made for any change what so ever.</td>
                                            <td style="text-align: center;">
                                                <img id="dvpsignp" src="1.jpeg" height="50px" width="120px" /><br />
                                                (Signature)
                                            </td>
                                            <td style="text-align: center; width: 50px">
                                                <img id="dvpthumbp" src="1.jpeg" height="50px" width="120px" />
                                                <br />
                                                (Thumb)
                                            </td>
                                        </tr>

                                    </table>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>
    <hr />
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
    <div class="modal fade" id="instructionmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="instructionmodalhead"></h5>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-8" id="instructionmodalmsg">
                            </div>

                            <div class="col-md-4" id="dvsample1" style="vertical-align: middle">
                                <img id="dvsampleimg" src="" style="height: 150px; width: 150px" />
                                <br />
                                <p>Sample Photograph</p>
                            </div>
                            <div class="col-md-4" id="dvsample2" style="vertical-align: middle">
                                <img id="dvsampleimg2" src="" style="height: 50px; width: 150px" />
                                <br />
                                <p id="dvsamplesign"></p>
                            </div>
                            <div class="col-md-12" id="dvnote"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary shadow" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <hr />
    <script src="../plug/jquery/jquery.js"></script>
    <script src="../plug/jquery/jquery.cookie.js"></script>
    <script src="data_script/update_details.js"></script>
    <script src="data_script/updateaddress.js"></script>
    <script src="data_script/update_qualification.js"></script>
    <script src="data_script/uploaddoc.js"></script>
    <script src="data_script/update_center.js"></script>
    <script src="data_script/getall.js"></script>
    <script src="data_script/event.js"></script>
    <script src="data_script/Instruction.js"></script>
    <script src="data_script/submit.js"></script>
	<script src="data_script/pay.js"></script>
	<script src="data_script/step.js"></script>
    <script>

</script>
    <script>
        $('#btnpay').click(function () {
            debugger;
            window.location = 'f';
        });
    </script>
    <script>
        $('#btnlogout').click(function () {
            eraseCookie('dataString');
            window.location = 'https://iertentrance.in/index.aspx';
        });
    </script>
</asp:Content>
