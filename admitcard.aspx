<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admitcard.aspx.cs" Inherits="admitcard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>I.E.R.T ADMISSION</title>
    <link rel="stylesheet" href="assets/css/style-starter.css" />
    <style type="text/css" id="operaUserStyle"></style>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="stylesheets/style.css" />
    <link rel="stylesheet" href="stylesheets/jtab.min.css" />
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script>
        jQuery(document).ready(function () {
            $("#first-div").prepend("<div class=\"overlay-example\"></div>");

            var height1 = $("#first-div").height();
            var width1 = $("#first-div").width();

            $(".overlay-example").css({
                "background-color": "black",
                "z-index": "9999999",
                "position": "absolute",
                "width": width1,
                "height": height1,
                "display": "none"
            }).fadeTo(0, 0.0001);
        });
    </script>
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
    <style>
        table td, th {
            border: solid 1px;
            border-collapse: collapse;
        }

        .tblprint td, th {
            border: solid 1px;
            padding-left: 5px;
            border-collapse: collapse;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <div class="container mt-5" style="margin-left: auto; margin-right: auto" id="first-div">
            <div class="card">
                <div class="pull-right" style="margin-right: 5em">
                    <button class="btn btn-outline-success" id="printadmit">
                        <i class="fa fa-print"></i>
                    </button>
                </div>
                <div id="print">
                    <div class="container mt-5">
                        <div class="">
                            <table style="width: 100%">
                                <tr style="text-align: center">
                                    <td rowspan="2" style="width: 50px; text-align: center; vertical-align: middle">
                                        <img src="favicon.png" style="height: 90px" /></td>
                                    <td style="font-size: 25px">INSTITUTE OF ENGINEERING AND RURAL TECHNOLOGY (IERT)<br />
                                        <p style="font-size: 16px; font-weight: bold" class="mt-3">IERT ENTRANCE EXAMINATION ADMIT-CARD-2023</p>
                                    </td>
                                </tr>
                                <tr style="text-align: center">
                                    <td>26, CHATHAM LINES, PRAYAGRAJ - 211002 (U.P), INDIA
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div><br/>
                    <div class="container">
                        <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                            <tr style="vertical-align: middle; text-align: center">
                                <td colspan="3"><span id="txtcourse" runat="server"></span></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;ROLL NO.</td>
                                <td>&nbsp;&nbsp;<span id="txtroll" runat="server"></span></td>
                                <td rowspan="6" style="vertical-align: middle; text-align: center">
                                    <div id="plBarCode" runat="server" style="height: 90px; width: 90px;padding-left:2em" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;APPLICATION NO.</td>
                                <td>&nbsp;&nbsp;<span id="txtapp" runat="server"></span></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;EXAMINATION CENTER</td>
                                <td>&nbsp;&nbsp;<span id="txtcenter" runat="server"></span> </td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;DATE OF EXAM</td>
                                <td>&nbsp;&nbsp;30 JUNE 2023</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;EXAMINATION TIME</td>
                                <td>&nbsp;&nbsp;10:00 AM TO 12:00 PM</td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;REPORTING TIME</td>
                                <td>&nbsp;&nbsp;9:00 AM</td>
                            </tr>
                        </table><br/>
                        <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                            <tr>
                                <td>&nbsp;&nbsp;NAME OF CANDIDATE</td>
                                <td>&nbsp;&nbsp;<span id="txtname" runat="server"></span></td>
                                <td rowspan="6" style="vertical-align: middle; text-align: center">
                                    <img id="dvphoto" runat="server" src="1.jpeg" style="height: 120px; width: 120px;" /></td>
                                <td rowspan="3" style="vertical-align: middle; text-align: center">
                                    <img id="dvsign" runat="server" src="1.jpeg" style="height: 50px; width: 90px;" /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;FATHER'S NAME</td>
                                <td>&nbsp;&nbsp;<span id="txtfname" runat="server"></span></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;MOTHER'S NAME</td>
                                <td>&nbsp;&nbsp;<span id="txtmname" runat="server"></span> </td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;DATE OF BIRTH</td>
                                <td>&nbsp;&nbsp;<span id="txtdob" runat="server"></span></td>
                                <td rowspan="3" style="vertical-align: middle; text-align: center">
                                    <img id="dvthumb" runat="server" src="1.jpeg" style="height: 50px; width: 90px;" /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;CATEGORY</td>
                                <td>&nbsp;&nbsp;<span id="txtcat" runat="server"></span></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;SUB CATEGORY</td>
                                <td>&nbsp;&nbsp;<span id="txtsubcat" runat="server"></span></td>
                            </tr>
                        </table>

                        <div class="mt-3 mx-5" style="margin-left: auto; margin-right: auto">
                            <h4 style="font-size: 20px"><b>Important Instructions</b></h4>
                            <ul class="mt-2 mx-4" style="list-style-type: decimal; line-height: 2em">
                                <li>Candidates should bring along with them a valid and recent photo ID proof as mentioned in the application form for verification.
                                </li>
                                <li>Candidate should rport to their respective center 1 hour before the start of the examination. </li>
                                <li>Candidate should reach the examination center along with the hard copy of this admit card. Entry to the examination center will not be allowed without the admit card.</li>
                                <li>No candidate, in any case, will be allowed to enter the examination center after the commencement of the examination.</li>
                                <li>The candidate should go through the instructions mentioned on the Test Booklet and Answer OMR sheet carefully and follow them strictly.</li>
                                <li>Candidates should use onl;y Black Ball point pen to write particulars on the cover page of the test booklet, answer OMR sheet and for darkening the circles of the responses. Use of Pencils or any other means is strictly prohibited.</li>
                                <li>Carrying calculators and mobile phones are strictly prohibited and candidates are advised not to bring books,copies, electronic watches or any material that can be used as unfair means to the examination center under any circumstances. If a candidate is found processing them, he/she shall be treated as using unfair means and shall be lisable to be debarred from the Exam. 
                                </li>
                                <li>Non-compliance to the instructions will yeild into rejection of the candidature for which sole responsibility will be of the candidate.
                                </li>
                                <li>Candidates should bring along with them a valid and recent photo ID proof as mentioned in the application form for verification.
                                </li>
                            </ul>

                        </div>
                        <hr />
                        <div class="mt-3 mx-5" style="margin-left: auto; margin-right: auto; text-align: center;">
                            <h4 style="font-size: 20px">Note : Face mask and hand sanitizer is mandatory for entry into the examination hall
                            </h4>
                        </div>

                        <div class="mt-3 mx-5" style="margin-left: auto; margin-right: auto;">
                            <div class="pull-left col-md-4" style="text-align: center;float:left">
                                <p style="border: solid 1px; height: 70px;width:300px;">
                                </p>
                                <br />
                                <p style="text-align: center">
                                    Seal of coordinator Entrance<br />
                                    Examination 2023 IERT<br />
                                    Prayagraj
                                </p>
                            </div>
                            <div class="pull-right col-md-4" style="text-align: center;float:right">
                                <p style="border: solid 1px; height: 70px;width:300px;">
                                <img src="signature.png" style="height: 60px;width:250px;vertical-align:middle;padding-top:2px"/>\
                                    </p>
                                <br />
                                <p style="text-align: center">
                                    Coordinator Entrance<br />
                                    Examination 2023 IERT<br />
                                    Prayagraj
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </form>

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
    <script>
        $(document).ready(function () {
            debugger;

            $('#printadmit').bind("click", function () {
                var d = new Date(),
                    minutes = d.getMinutes().toString().length == 1 ? '0' + d.getMinutes() : d.getMinutes(),
                    hours = d.getHours().toString().length == 1 ? '0' + d.getHours() : d.getHours(),
                    ampm = d.getHours() >= 12 ? 'pm' : 'am',
                    months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
                var dx = days[d.getDay()] + ' ' + months[d.getMonth()] + ' ' + d.getDate() + ' ' + d.getFullYear() + ' ' + hours + ':' + minutes + ampm;
                var gridData = $('#admitc').html();
                var windowUrl = 'about:blank';
                var uniqueName = new Date();
                var windowName = 'Print_' + uniqueName.getTime();
                var db = '';
                var prtWindow = window.open('', '',
                    'left=100,top=100,right=100,bottom=100,width=700,height=500');
                prtWindow.document.write('<html><head><style type = "text/css"> input[type="checkbox"]{display:none;}  table {    border-collapse: collapse;font-size:12px;} table, th, td{border:solid 1px #000;padding:3px;} </style></head>');
                prtWindow.document.write('<body style="background:none !important;font-family:arial;font-size:10px; margin-left:2em;margin-right:2em;">');
                prtWindow.document.write('<div style="float:left"><p style="text-align:center;">Print Date & Time : ' + dx + '</p></div><br></div><table style="width:100%;text-align:center">' + $('#print').html() + '</table>');
                prtWindow.document.write('</body></html>');
                prtWindow.document.close();
                prtWindow.focus();
                prtWindow.print();
                prtWindow.close();
            });
        });

    </script>
</body>
</html>
