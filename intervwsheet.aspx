<%@ Page Language="C#" AutoEventWireup="true" CodeFile="intervwsheet.aspx.cs" Inherits="intervwsheet" %>

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

            thead.report-header {
                display: table-header-group;
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

           /* @page {
                size: landscape
            }*/
        }
    </style>
</head>
<body>

    <div class="border-primary container-fluid">

        <div class="card-body">
            <table style="width: 100%" class="table-bordered table-hover">
                <tr style="text-align: center">
                    <td rowspan="2" style="width: 50px; text-align: center; vertical-align: middle">
                        <img src="favicon.png" style="height: 90px" /></td>
                    <td style="font-size: 25px">INSTITUTE OF ENGINEERING AND RURAL TECHNOLOGY (IERT)<br />
                        <p style="font-size: 16px; font-weight: bold" class="m1-3">
                            26, CHATHAM LINES, PRAYAGRAJ - 211002 (U.P), INDIA<br />
                            IERT ENTRANCE EXAMINATION 2023<br />
                            MARKS ALLOTMENT SHEET&nbsp; (<span id="coursename"></span>)
                        </p>
                    </td>
                </tr>

            </table>


            
            <div class="mt-1" style="margin-left: 3em">
                <div>
                    <div style="font-weight: bold"><span >Board &nbsp;:&nbsp;</span><span id="">1</span> </div>
                </div>               
            </div>
            <hr />


            <table id="tblgetlist" class="table table-bordered table-hover" width="100%">
                <thead class="report-header" style="font-weight: bold;">
                    <tr>
                        <td style="font-size:18px;vertical-align:middle">Serial No.</td>
                        <td style="font-size:18px;vertical-align:middle">Roll No</td>                       
                        <td style="font-size:18px;vertical-align:middle">Candidate's Name</td>
                        <td style="font-size:18px;vertical-align:middle">Father's Name</td>
                       
                        <td style="width:300px;text-align: center;">Sign. of candidate</td>
                    </tr>
                </thead>
                <tbody style="vertical-align: middle">
                </tbody>
            </table>
        </div>
    </div>

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
    <script src="data_script/interview.js"></script>
</body>
</html>
