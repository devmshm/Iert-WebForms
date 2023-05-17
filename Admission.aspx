<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/home.master" AutoEventWireup="true" CodeFile="Admission.aspx.cs" Inherits="Admission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    
    <style>
        .arrow {
            text-align: center;
            margin: 8% 0;
        }

        .bounce {
            -moz-animation: bounce 2s infinite;
            -webkit-animation: bounce 2s infinite;
            animation: bounce 2s infinite;
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }

            40% {
                transform: translateY(-30px);
            }

            60% {
                transform: translateY(-15px);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="card" style="text-align: center">
            <div class="card-body shadow">
                <div class="table table-responsive">
                    <table class="table-bordered table-striped">
                        <tr>
                            <td colspan="3"  style="font-weight: bold; font-size: 22px; color: darkblue">Courses Offered</td>
                        </tr>
                        <tr  style="font-weight: bold; cursor: pointer" data-toggle="collapse" href="#collapseExample">
                            <td style="color: darkcyan;"><i style="color: red;" class="fa fa-hand-o-right"></i>&nbsp;&nbsp;3 Year ( 6 Semester) Engineering / Technology Diploma
                                <br />
                                <p class="bounce">
                                    <i style="color: black;" class="fa fa-chevron-down"></i>
                                </p>
                            </td>
                            <td style="color: darkcyan"><i style="color: red;" class="fa fa-hand-o-right"></i>&nbsp;&nbsp;2 Year (4 semester) Management Diploma
                                <br />
                                <p class="bounce">
                                    <i style="color: black;" class="fa fa-chevron-down"></i>
                                </p>
                            </td>
                            <td style="color: darkcyan"><i style="color: red;" class="fa fa-hand-o-right"></i>&nbsp;&nbsp;One & Half Year (3 Semester ) Post Diploma In Computer Application
                                <br />
                                <p class="bounce">
                                    <i style="color: black;" class="fa fa-chevron-down"></i>
                                </p>
                            </td>
                        </tr>
                        <tr class="collapse" id="collapseExample">
                            <td>
                                <div class="container">
                                    <p style="font-weight: bold; font-size: 20px; color: red">Courses</p>
                                    <hr />
                                    <ul style="list-style: none; text-align: left">
                                        <li style="font-weight: bold">(A) Diploma in Plastic Technology.</li>
                                        <li style="font-weight: bold">(B) Diploma in Electrical Engineering</li>
                                        <li style="font-weight: bold">(C) Diploma in Electronics Engineering</li>
                                        <li style="font-weight: bold">(D) Diploma in Instrumentation & Control Engineering.</li>
                                        <li style="font-weight: bold">(E) Diploma in Civil Engineering with Specialization in:</li>
                                        <li style="padding-left: 15px">(1) Civil Engineering</li>
                                        <li style="padding-left: 15px">(2) Construction Technology</li>
                                        <li style="padding-left: 15px">(3) Public Health Engineering</li>
                                        <li style="font-weight: bold">(F) Diploma in Mechanical Engineering with Specialization in:</li>
                                        <li style="padding-left: 15px">(1) Power Plant Engineering</li>
                                        <li style="padding-left: 15px">(2) Production Engineering</li>
                                        <li style="padding-left: 15px">(3) Automobile Engineering</li>
                                        <li style="padding-left: 15px">(4) Tool Engineering</li>
                                        <li style="padding-left: 15px">(5) Refrigeration & Air Conditioning Engineering</li>
                                        <li style="padding-left: 15px">(6) Tube-well Engineering
                                        </li>
                                    </ul>
                                    <hr />
                                    <p style="font-weight: bold; font-size: 20px; color: red">Eligibility</p>
                                    <hr />
                                    <ul style="text-align: left">
                                        <li>
                                            <span><b>Qualification</b> &nbsp: &nbsp</span><span>Candidate should have passed High School (10th class) examination with Science
& Maths conducted by Madhyamik Shiksha Parishad U.P. or any other
equivalent examination of Central Board(CBSE or ICSE) or any other State
Board. Candidate appearing in the above Examination is also eligible, subject to
the condition they will have to produce their pass Mark Sheet & Certificate of
High School at the time of counseling.</span>
                                        </li>
                                        <br />
                                        <li><span><b>Age :</b>&nbsp</span><span> There is no any upper age limit but
candidate must be a minimum of 14 years old on 1st July 2023.</span></li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="container">

                                    <p style="font-weight: bold; font-size: 20px; color: red">Eligibility</p>
                                    <hr />
                                    <ul style="text-align: left">
                                        <li>
                                            <span><b>Qualification</b> &nbsp: &nbsp</span><span>Intermediate (10+2) pass or equivalent English and Hindi at High School or
Intermediate level. Candidates appearing in the above mentioned examination
are also eligible for the Entrance Examination, but they will have to produce pass
mark sheet and certificate of above examination at the time of counseling.</span>
                                        </li>
                                        <br />
                                        <li><span><b>Age :</b>&nbsp</span><span> There
is no any upper age limit but candidate must be a minimum of 16 years old on 1st
July 2023.</span></li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div class="container">
                                    <p style="font-weight: bold; font-size: 20px; color: red">Eligibility</p>
                                    <hr />
                                    <ul style="text-align: left">
                                        <li>
                                            <span><b>Qualification</b> &nbsp: &nbsp</span><span>Diploma in any branch of Engg./Tech. or graduate in any discipline with Physics
and Maths Subjects at Intermediate (10+2) or its equivalent. The appearing
candidates at above mentioned exam are also eligible for entrance examination
but they will have to produce pass mark sheet and certificate of above exam at
the time of counselling.</span>
                                        </li>
                                        <br />
                                        <li><span><b>Age :</b>&nbsp</span><span> There is no any upper age limit but candidate must be a
minimum of 18 years old on 1st July 2023.</span></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr class="collapse" id="collapseExample">
                            <td><a href="register.aspx" class="btn btn-warning shadow">Apply Now</a></td>
                            <td><a href="register.aspx" class="btn btn-warning shadow">Apply Now</a></td>
                            <td><a href="register.aspx" class="btn btn-warning shadow">Apply Now</a></td>
                        </tr>
                    </table>
                </div>
                <br />
                <hr>

                <div class="col-md-12">
                    <div style="color: blue; border-spacing: 1px; font-size: 20px;"><span class="alert alert-info shadow"><i class="fa fa-globe"></i>&nbsp;&nbsp;Important Links</span></div>
                </div>
                <hr>
                <div style="text-align: center">
                    <div class="table table-responsive" style="text-align: center">

                        <table class="table-bordered table-striped" width="100%">
                            <tr>
                                <td><a href="brouchure.pdf" style="color: red; text-decoration: blink"><i class="fa fa-hand-o-right shadow-lg"></i>&nbsp;&nbsp;<u>Information Brouchure (download and read before filling of online application form)</u></a></td>
                            </tr>
                            <tr>
                                <td><a href="instruction.pdf" style="color: green; text-decoration: blink"><i class="fa fa-hand-o-right shadow-lg"></i>&nbsp;&nbsp;<u>Most Important Instructions before filling online application form</u></a> </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>

