<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/home.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="w3l-main-slider" id="home">
        <div class="companies20-content">
            <div class="owl-one  owl-carousel owl-theme">
                <ul class="item">
                    <li>
                        <div class="slider-info banner-view bg bg2" data-selector=".bg.bg2">
                            <div class="banner-info">
                                <div class="container">
                                    <div class="banner-info-bg mx-auto text-center">
                                        <h5 style="font-size: 30px;">Institute of Engineering and Rural Technology, Prayagraj
                                        </h5>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="item">
                    <li>
                        <div class="slider-info  banner-view banner-top1 bg bg2" data-selector=".bg.bg2">
                            <div class="banner-info">
                                <div class="container">
                                    <div class="banner-info-bg mx-auto text-center">
                                        <h5 style="font-size: 30px">Institute of Engineering and Rural Technology, Prayagraj
                                        </h5>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="item">
                    <li>
                        <div class="slider-info banner-view banner-top2 bg bg2" data-selector=".bg.bg2">
                            <div class="banner-info">
                                <div class="container">
                                    <div class="banner-info-bg mx-auto text-center">
                                        <h5 style="font-size: 30px">Institute of Engineering and Rural Technology, Prayagraj
                                        </h5>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <script src="assets/js/owl.carousel.js"></script>
        <script>
            $(document).ready(function () {
                $('.owl-one').owlCarousel({
                    loop: true,
                    margin: 0,
                    nav: false,
                    responsiveClass: true,
                    autoplay: false,
                    autoplayTimeout: 5000,
                    autoplaySpeed: 1000,
                    autoplayHoverPause: false,
                    responsive: {
                        0: {
                            items: 1,
                            nav: false
                        },
                        480: {
                            items: 1,
                            nav: false
                        },
                        667: {
                            items: 1,
                            nav: true
                        },
                        1000: {
                            items: 1,
                            nav: true
                        }
                    }
                })
            })
        </script>
    </section>
    <section class="w3l-feature-3" id="features">
        <div class="grid top-bottom mb-lg-5 pb-lg-5">
            <div class="container">

                <!--<div class="middle-section grid-column text-center">
                    <div class="three-grids-columns">
                        <span class="fa fa-laptop"></span>
                        <h4>Learn Courses Online</h4>
                        <p>Auci elit cons equat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet</p>
                        <a href="services.html" class="btn btn-secondary btn-theme3 mt-4">Read More </a>
                    </div>
                    <div class="three-grids-columns">
                        <span class="fa fa-users"></span>
                        <h4>Highly Qualified Teachers</h4>
                        <p>Auci elit cons equat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet</p>
                        <a href="services.html" class="btn btn-secondary btn-theme3 mt-4">Read More </a>
                    </div>
                    <div class="three-grids-columns">
                        <span class="fa fa-book"></span>
                        <h4>Book Library & Stores</h4>
                        <p>Auci elit cons equat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet</p>
                        <a href="services.html" class="btn btn-secondary btn-theme3 mt-4">Read More </a>
                    </div>
                </div>-->
            </div>
        </div>
    </section>
    <section class="" id="about">
        <div class="container py-md-3 mt-5 py-5">
            <div class="calltoaction-20-content row">
                <div class="col-md-8 col-sm-12 mt-2">
                    <div class="card shadow nav-border">
                        <div class="table table-responsive nav-border">
                            <table width="100%" class="table-bordered table-striped">
                                <thead>
                                    <tr class="shadow bg-danger" style="color: white">
                                        <td colspan="2">Important News and  Events</td>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="2"><a style="color: green; font-weight: bold; font-size: 18px" href="PROS.pdf" target="_blank">Information Brouchure  (download and read before filling of online application form)</a></td>

                                    </tr>
                                    <tr>
                                        <td colspan="2"><a style="color: blue; font-weight: bold; font-size: 18px" href="instruction.pdf" target="_blank">Most Important Instructions before filling online application form</a></td>

                                    </tr>
                                    <tr>
                                        <td colspan="2"><a style="color: red; font-weight: bold; font-size: 18px" href="placement.pdf" target="_blank">Placement Status Session 2022-23</a></td>

                                    </tr>
                                    <tr>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr class="bg-warning shadow">
                                        <td>Events</td>
                                        <td>Dates</td>
                                    </tr>
                                    <tr>
                                        <td>The opening date for online Application</td>
                                        <td>15/12/2024</td>
                                    </tr>
                                    <tr>
                                        <td>The closing date for online Application</td>
                                        <td>30/04/2024</td>
                                    </tr>


                                    <tr>
                                        <td>The closing date for Fee Payment</td>
                                        <td>30/04/2024 </td>
                                    </tr>
                                    <tr>
                                        <td>Date of Entrance Examination for Three Years (6 semester) Engg. Diploma</td>
                                        <td>11/06/2024</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Entrance Examination for Two Years (4 semester) Management Diploma</td>
                                        <td>14/06/2024</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Entrance Examination for 1&#189; Years (3 Semester) Post Diploma in Computer Application</td>
                                        <td>14/06/2024</td>
                                    </tr>

                                </tbody>
                            </table>
                            <div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 mt-2">
                    <div class="card shadow nav-border">
                        <div class="table table-responsive nav-border">
                            <table width="100%" class="table-striped">
                                <thead>
                                    <tr>
                                        <td colspan="2" class="shadow bg-info" style="color: white">Login For Registered Candidates</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="2">
                                            <div class="form-inline">
                                                <i class="fa fa-user form-control"></i>
                                                <input class="form-control" placeholder="Registration No." id="txtUserId" />
                                            </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="form-inline">
                                                <i class="fa fa-lock form-control"></i>
                                                <input class="form-control" placeholder="Password" id="txtUPassword" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="form-inline">
                                                <i class="fa fa-check-square-o form-control"></i>

                                                <input class="form-control" placeholder="Enter Captcha Value" id="txtInput" />
                                            </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="mainCaptcha" style="background-image: url('../1.jpeg'); height: 40px; vertical-align: middle; font-weight: bold; font-size: 20px; text-align: center"></div>

                                        </td>
                                        <td>
                                            <button id="refresh" class="btn btn-outline-danger shadow btn-sm" onclick="Captcha();"><i class="fa fa-refresh"></i></button>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2" style="text-align: center">
                                            <button class="btn btn-outline-success shadow bt-border" id="btnLog">Login</button>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="https://iertentrance.in/forget.aspx" class="btn btn-outline-primary nav-border shadow-lg pull-right"><i>Forget Password ?</i></a>
                                        </td>
                                        <td>
                                            <a href="https://iertentrance.in/find.aspx" class="btn btn-outline-warning nav-border shadow-lg pull-left"><i>Forget Reg No ?</i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section class="services-12" id="course">
        <div class="form-12-content">
            <div class="container">
                <div class="grid grid-column-2 ">

                    <div class="column1">
                        <div class="heading">
                            <h3 class="head text-white">Apply for Admission</h3>
                            <h4>2024 applications are now open</h4>
                            <p class="my-3 text-white">
                                <!--Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                Nulla mollis dapibus nunc, ut rhoncus
                                turpis sodales quis. Integer sit amet mattis quam.-->
                            </p>
                        </div>
                    </div>
                    <div class="column2">
                        <a class="btn btn-secondary btn-theme2 mt-3" href="../register.aspx">Apply Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="w3l-index2">
        <div class="main-w3 py-5" id="stats">
            <div class="container py-lg-3">
                <div class="row main-cont-wthree-fea">
                    <div class="col-lg-4 col-sm-6">
                        <div class="grids-speci1" style="vertical-align: bottom">
                            <h4 class="title-spe" style="text-align: center;">
                                <br />
                                100%
                                <br />
                                Placement</h4>
                            <p>
                                <br />
                                100 Percent placement for deserving candidate since last 
                                <br>
                                3 years
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mt-sm-0 mt-4">
                        <div class="grids-speci1">
                            <h4 class="title-spe" style="text-align: center">6<br />
                                LPA
                            </h4>
                            <p>
                                <br />
                                Our students received a highest CTC of INR 6 LPA and
                                average CTC is stood at INR 3 LPA
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-5 col-sm-6  mt-lg-0 mt-4">
                        <div class="grids-speci1">
                            <h4 class="title-spe" style="text-align: center">100<br />
                                Companies</h4>
                            <p>
                                <br />
                                The cell interacts<br>
                                nearly 100 companies visit the campus for holding campus interviews
                            </p>
                        </div>
                    </div>

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
                            <li><%--<a href="#"><span class="fa fa-phone"></span>Technical Helpline : &nbsp;8601111522 (From 11:00 A.M to 5:00 P.M)</a>--%></li>
                            <li><a href="mailto:helpdesk2024@iertentrance.in" class="mail"><span class="fa fa-envelope-open-o"></span>helpdesk2024@iertentrance.in</a></li>
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
        <script src="data_script/login.js?v=1.0.2"></script>
        <%-- <script src="../assets/js/jquery-3.3.1.min.js"></script>--%>
    </section>
</asp:Content>

