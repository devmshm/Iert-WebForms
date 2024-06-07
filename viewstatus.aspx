<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/masterpages/home.master" CodeFile="viewstatus.aspx.cs" Inherits="viewstatus" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="container mb-5">
            <div class="calltoaction-20-content row ">
                <div class="col-md-12 col-sm-12 row justify-content-center">
                    <form id="frm1" runat="server">
                         
                        <div class="card shadow">
                            <div class="card-header shadow bg-primary" style="color: white">
                                Enter Your Details To View Your Result Status
                            </div>
                            <div class="card-body">                               
                                <div class="form-group">
                                   <%-- <label class="control-label" style="font-weight: bold">Application No</label>
                                    <asp:TextBox runat="server" ID="txtappno" placeholder="Enter Application No." CssClass="col-md-12 form-control"></asp:TextBox>
                                    <label class="col-md-12 control-label mt-4" style="text-align: center; font-weight:bold;font-size:20px;vertical-align: middle">OR</label>
                                    --%>
                                    <label class="control-label" style="font-weight: bold">Roll No</label>
                                    <asp:TextBox runat="server" ID="txtroll" CssClass="col-md-12 form-control" placeholder="Enter Roll No."></asp:TextBox>
                                    <label class=" mt-3 control-label" style="font-weight: bold">Date of Birth</label>
                                    <asp:TextBox runat="server" ID="txtdob" CssClass="col-md-12 form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                                <p class="mt-2" style="color:red;font-size:12px">Date of Birth Must Be In DD/MM/YYYY Format.</p>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-center">
                                    <asp:Button Text="View Result Status" OnClick="btnview_Click" CssClass="btn btn-outline-primary shadow" ID="btnview" runat="server" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </section>


    <section class="w3l-footer-29-main">
        <div class="footer-29">
            <div class="container">
                <div class="d-grid grid-col-4 footer-top-29 center-align-self">
                    <div class="footer-list-29 footer-1">
                        <h6 class="footer-title-29">Contact Us</h6>
                        <ul>
                            <li>
                                <p><span class="fa fa-map-marker"></span>26, Chaitham Lines, Prayagraj, Uttar Pradesh 211002.</p>
                            </li>
                            <li><a href="#"><span class="fa fa-phone"></span>Technical Helpline : &nbsp;8601111522 (From 11:00 A.M to 5:00 P.M)</a></li>
                            <li><a href="mailto:corporate-mail@support.com" class="mail"><span class="fa fa-envelope-open-o"></span>helpdesk@iertentrance.in</a></li>
                        </ul>
                        <%-- <div class="main-social-footer-29">
                            <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
                            <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
                            <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
                            <a href="#google-plus" class="google-plus"><span class="fa fa-google-plus"></span></a>
                            <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
                        </div>--%>
                    </div>
                    <div class="footer-list-29 footer-3">
                        <form action="#" class="subscribe" method="post">
                        </form>
                    </div>
                    <div class="footer-list-29 footer-2">
                    </div>
                </div>
                <div class="d-grid grid-col-2 bottom-copies">
                    <%--  <p class="copy-footer-29">© 2020 Mastery. All rights reserved | Designed by <a href="https://w3layouts.com">W3layouts</a></p>--%>
                    <ul class="list-btm-29">
                        <%-- <li><a href="#link">Privacy policy</a></li>
                        <li><a href="#link">Terms of service</a></li>--%>
                    </ul>
                </div>
            </div>
        </div>
        <!-- move top -->
        <button onclick="topFunction()" id="movetop" title="Go to top">
            <span class="fa fa-angle-up"></span>
        </button>
        <script>
            window.onscroll = function () {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("movetop").style.display = "block";
                } else {
                    document.getElementById("movetop").style.display = "none";
                }
            }
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>

        <script src="plug/jquery/jquery.cookie.js"></script>
        <script src="data_script/login.js"></script>
        <%-- <script src="../assets/js/jquery-3.3.1.min.js"></script>--%>
    </section>
</asp:Content>
