<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sb_payrec.aspx.cs" Inherits="sb_payrec" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>I.E.R.T ADMISSION</title>
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <style type="text/css" id="operaUserStyle"></style>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="stylesheets/style.css" />
    <link rel="stylesheet" href="stylesheets/jtab.min.css" />
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <style>
        .nav-border {
            border-radius: 30px;
        }

        .bt-border {
            border-radius: 10px;
        }

        .bt-border1 {
            border-bottom-left-radius: 30px;
            border-bottom-right-radius: 30px;
        }
    </style>
    <style>
        .blink {
            animation: blinker 3s linear infinite;
            color: red;
            font-family: sans-serif;
        }

        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }
    </style>
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
			 #tbllist td,th{
			vertical-align:middle;
			}
        }
    </style>

    <script language="javascript" type="text/javascript">
        function rePrint() {
            window.print();
        }
    </script>
</head>
<body>

    <form runat="server">
        <section class="w3l-top-menu-1 nprintdiv">
            <div class="top-hd">
                <div class="container">
                    <header class="row top-menu-top">
                        <div class="accounts col-md-9 col-6">
                            <li class="top_li"><span class="fa fa-phone"></span><a href="tel:+142 5897555">Technical Helpline : &nbsp;8601111522 (11:00 A.M to 5:00 P.M)</a> </li>
                            <li class="top_li1"><span class="fa fa-envelope-o"></span><a href="mailto:helpdesk@iertentrance.in" class="mail">helpdesk@iertentrance.in</a></li>
                        </div>
                    </header>
                </div>
            </div>
        </section>
        <section>
            <div class="container ">
                <div>
                    <div class="row" style="padding: 8px">
                        <div class="col-md-1 col-xs-12 col-lg-1 col-sm-12 nprintdiv">
                            <img src="../favicon.png" height="90px" />
                        </div>
                        <div class="col-md-11" style="text-align: center">
                            <p style="font-size: 18px">
                                <span style="font-size: 28px; color: forestgreen; text-align: center">Institute of Engineering and Rural Technology, Prayagraj</span>
                                <br />
                                26, Chaitham Lines,  Prayagraj, Uttar Pradesh 211002
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      
        <section class="w3l-bootstrap-header nprintdiv">
            <nav class="navbar shadow navbar-expand-lg bg-dark navbar-dark py-lg-2 py-2">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon fa fa-bars"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item"><a class="nav-link" href="index.aspx" style="color: white">Home</a> </li>
                            <li class="nav-item"><a class="nav-link" href="https://iertentrance.in/about.aspx" style="color: white">About Institute</a> </li>
                            <li class="nav-item"><a class="nav-link" href="https://iertentrance.in/admission.aspx" style="color: white">Admission</a> </li>
                            <li class="nav-item"><a class="nav-link" href="hta.pdf" style="color: white">How To Apply</a> </li>
                            <li class="nav-item"><a class="nav-link" href="https://iertentrance.in/contact.aspx" style="color: white">Contact Us</a> </li>
                        </ul>
                        <div class="navbar-nav mx-auto pull-right" style="vertical-align: middle" id="app">
                            <div class="nav-item"></div>
                        </div>
                    </div>
                </div>
            </nav>
            <br />
        </section>

        <div class="container">
            <div class="col-md- mx-5">
                <div class="card shadow nav-border">
                    <div class="card-header bg-info">
                        Payment Details
                          <div class="pull-right nprintdiv">
                              <div class="btn btn-dark btn-sm shadow" onclick="rePrint();">
                                  <i class="fa fa-print"></i>&nbsp;
                              </div>
                          </div>
                    </div>
                    <div class="card-body">
                        <div class="form-horizontal">
                            <div class="mb-3">
                                <label class="control-label">Application No.</label>
                                <asp:Label CssClass="form-control" ID="lblappid" runat="server">
                                </asp:Label>
                            </div>

                            <div class="mb-3">
                                <label class="control-label">Payment Status</label>
                                <asp:Label CssClass="form-control" ID="lblstatus" runat="server">
                                </asp:Label>
                            </div>

                            <div class="mb-3">
                                <label class="control-label">Amount</label>
                                <asp:Label CssClass="form-control" ID="lblamount" runat="server">
                                </asp:Label>
                            </div>
                            <div class="mb-3">
                                <label class="control-label">Tracking Id</label>
                                <asp:Label CssClass="form-control" ID="lbltra" runat="server">
                                </asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <%--<div style="margin-left: 30em; margin-right: auto">
        <table width="60%" height="100" border='1' style="text-align: center">
            <tr>
                <td colspan="2" style="font-size: 20px; font-weight: bold">Fee Reciept</td>
            </tr>
            <tr>
                <td>Applicationid No.</td>
                <td>
                    <asp:Label runat="server" ID="lblappid"></asp:Label></td>
            </tr>
            <tr>
                <td>Order Id</td>
                <td>
                    <asp:Label runat="server" ID="lbloid"></asp:Label></td>
            </tr>
            <tr>
                <td>Bank Reference No.</td>
                <td>
                    <asp:Label runat="server" ID="lblbank"></asp:Label></td>
            </tr>
            <tr>
                <td>Order Status</td>
                <td>
                    <asp:Label runat="server" ID="lblstatus"></asp:Label></td>
            </tr>

            <tr>
                <td>Amount</td>
                <td>
                    <asp:Label runat="server" ID="lblamt"></asp:Label></td>
            </tr>
            <tr >
                <td></td>
                <td>
                    <asp:Label runat="server" ID="lbltra"></asp:Label></td>
            </tr>
            <tr style="padding: 50px">
                <td colspan="2"><a href="registration.aspx" class="btn btn-primary btn-lg shadow">Back to Registration Form</a></td>
            </tr>
        </table>
        <br />
    </div>--%>
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
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
</body>

</html>
