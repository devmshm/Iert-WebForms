<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/home.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="card shadow nav-border">
            <div class="card-header  shadow-lg bg-primary" style="color: white">
                Enter Details
            </div>
            <div class="card-body">
                <div class="form-inline mt-2 py-2">
                    <label class="col-md-4">Application No.</label>
                    <div class="col-md-4">
                        <input class="form-control border-info" type="text" id="txtappno" />
                    </div>
                </div>
                <div class="form-inline mt-2 py-2">
                    <label class="col-md-4">Date of Birth</label>
                    <div class="col-md-4">
                        <input class="form-control border-info" type="text" id="txtdob" />
                    </div>
                </div>
                <div class="form-inline mt-2 py-2">
                    <label class="col-md-4">Enter OTP</label>
                    <div class="col-md-4">
                        <input class="form-control border-info" type="text" id="txtotp" />
                    </div>
                </div>
                <br />
                <div id="dvError" style="text-align: center"></div>
            </div>
            <div class="card-footer">
                <div class="pull-left" style="margin-left: 10em">
                    <a href="index.aspx" class="btn btn-outline-primary shadow">Login Here</a>
                </div>
                <div class="pull-right" style="margin-right: 15em">
                    <button class="btn btn-outline-danger shadow btn-flat" id="btngetotp">Get Otp</button>
                    <button class="btn btn-outline-success shadow btn-flat" id="btnvalidate">Validate OTP</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="passwordmodal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="passwordmodalhead"></h5>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8" id="passwordmodalmsg">
                                <div class="form-inline mt-2 py-2">
                                    <label class="col-md-4 col-sm-12 control-label">New Password</label>
                                    <div class="col-md-8 col-sm-12">
                                        <input type="password" id="txtnew" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-inline mt-2 py-2">
                                    <label class="col-md-4 col-sm-12 control-label">Confirm Password</label>
                                    <div class="col-md-8 col-sm-12">
                                        <input type="password" id="txtcpass" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="divCheckPasswordMatch" style="color: red; text-align: center"></div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div style="margin-right: 10em">
                        <button type="button" class="btn btn-outline-info shadow" id="btnupdatepass">Update Password</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="success" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="successhead"></h5>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div id="successtext">
                            
                        </div>                        
                    </div>
                </div>
                <div class="modal-footer">
                    <div style="margin-right: 10em">
                        <button type="button" class="btn btn-secondary shadow" data-dismiss="modal">close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    <script src="../plug/jquery/jquery.js"></script>
    <script src="../plug/jquery/jquery.cookie.js"></script>
    <script src="data_script/forget.js"></script>
    <script>
        $("#txtdob").datepicker({
            dateFormat: 'dd/mm/yy',
            changeMonth: true,
            changeYear: true,
            yearRange: "-100:+100",
            maxDate: new Date(),           
        });
    </script>
</asp:Content>

