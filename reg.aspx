<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/college.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        table td, th {
            border: solid 1px;
            border-collapse: collapse;
        }

        .tblprint td, th {
            border: solid 1px;
            border-collapse: collapse;
        }
    </style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

      <div class="container">
        <div class=" nprintdiv" width="100%" style="font-weight: bold; font-size: 20px; text-align: center">
            <span style="color: red;">Student Registration Cum Examination Form For Even Semester Diploma Examination.</span><br />
            <span style="color: blue;">(Session 2022-2023).</span>
        </div>
    </div>
    <hr />
    <div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu nprintdiv">
            <div class="list-group shadow">
                <a href="#" class="list-group-item shadow active text-center" id="basiclist">
                    <h4 class="glyphicon glyphicon-user shadow"></h4>
                    <br />
                    Registration Details
                </a>

                <a href="#" class="list-group-item text-center" id="btnlogout">
                    <h4 class="glyphicon glyphicon-log-out"></h4>
                    <br />
                    Logout
                </a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab">
            <div class="bhoechie-tab-content active" id="admitcarddownload">
                <div class="container mt-5" style="margin-left: auto; margin-right: auto">
                     <h4 class="mt-3 mx-3 my-3"><b>Roll No./ अनुक्रमांक : </b>201160</h4>
                    <div class="card  my-5">
                        <div class="container">
                            <h4 class="mt-3"><b>Primary Information</b></h4>
                            <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                                <tr>
                                    <td>&nbsp;&nbsp;NAME / नाम</td>
                                    <td>&nbsp;&nbsp;SHIVAM KUMAR TIWARI</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;Father's Name / पिता का नाम</td>
                                    <td>&nbsp;&nbsp;NEEL MANI TIWARI</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;Mother's Name / माता का नाम</td>
                                    <td>&nbsp;&nbsp;KIRAN DEVI </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;Course / कोर्स</td>
                                    <td>&nbsp;&nbsp;DIPLOMA IN CIVIL ENGINEERING</td>

                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;Semester / सेमेस्टर </td>
                                    <td>&nbsp;&nbsp;6<sup>th</sup></td>
                                </tr>

                            </table>
                            <h4 class="mt-3"><b>Details of subject (Reular)</b></h4>
                            <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                                <tr style="font-weight: bold">
                                    <td>&nbsp;&nbsp;Serial No.</td>
                                    <td>&nbsp;&nbsp;Subject Code</td>
                                    <td>&nbsp;&nbsp;Subject Name</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;1</td>
                                    <td>&nbsp;&nbsp;C15</td>
                                    <td>&nbsp;&nbsp;IRRIGATION ENGINEERING</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;2</td>
                                    <td>&nbsp;&nbsp;C13</td>
                                    <td>&nbsp;&nbsp;THEORY & DESIGN OF STEEL, TIMBER, MASS. STR.</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;3</td>
                                    <td>&nbsp;&nbsp;CAR2</td>
                                    <td>&nbsp;&nbsp;BUILDING SCIENCE</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;4</td>
                                    <td>&nbsp;&nbsp;C05</td>
                                    <td>&nbsp;&nbsp;CIVIL ENGG. DRAWING-II</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;5</td>
                                    <td>&nbsp;&nbsp;</td>
                                    <td>&nbsp;&nbsp;PROJECT & ENT</td>
                                </tr>
                            </table>
                            <h4 class="mt-3"><b>Details of subject (Back)</b></h4>
                            <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                                <tr style="font-weight: bold">
                                    <td>&nbsp;&nbsp;Serial No.</td>
                                    <td>&nbsp;&nbsp;Sem.</td>
                                    <td>&nbsp;&nbsp;Subject Code</td>
                                    <td>&nbsp;&nbsp;Subject Name</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;1</td>
                                    <td>&nbsp;&nbsp;5</td>
                                    <td>&nbsp;&nbsp;C16</td>
                                    <td>&nbsp;&nbsp;ESTIMATION & COSTING</td>
                                </tr>

                            </table>

                            <h4 class="mt-3"><b>Fee Receipt Details (Regular)</b></h4>
                            <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                                <tr>
                                    <td>&nbsp;&nbsp;Receipt No.</td>
                                    <td style="padding-bottom: 15px; padding-right: 5px; padding-left: 5px; vertical-align: middle;">&nbsp;&nbsp;<input class="form-control" /></td>
                                    <td>&nbsp;&nbsp;Upload receipt</td>
                                    <td style="padding-bottom: 15px; padding-right: 5px; padding-left: 5px; vertical-align: middle;">&nbsp;&nbsp;<input class="form-control" type="file" /></td>
                                </tr>
                            </table>
                            <h4 class="mt-3"><b>Fee Receipt Details (Back)</b></h4>
                            <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                                <tr>
                                    <td>&nbsp;&nbsp;Receipt No.</td>
                                    <td style="padding-bottom: 15px; padding-right: 5px; padding-left: 5px; vertical-align: middle;">&nbsp;&nbsp;<input class="form-control" /></td>
                                    <td>&nbsp;&nbsp;Upload receipt</td>
                                    <td style="padding-bottom: 15px; padding-right: 5px; padding-left: 5px; vertical-align: middle;">&nbsp;&nbsp;<input class="form-control" type="file" /></td>
                                </tr>
                            </table>

                            <h4 class="mt-3"><b>Uploads</b></h4>
                            <table class="mt-3" width="95%" style="margin-left: auto; margin-right: auto">
                                <tr>
                                    <td>&nbsp;&nbsp;Photo / तस्वीर</td>
                                    <td>&nbsp;&nbsp;<div style="height: 150px; width: 150px">
                                        <img src="a.jpg"  style="height: 150px; width: 150px; padding-left: 20px"/></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;Thumb Impression / अंगूठे का निशान</td>
                                    <td>&nbsp;&nbsp;<div style="height: 90px; width: 150px;">
                                        <img style="height: 90px; width: 150px; padding-left: 20px" src="sample_thumb.jpg" />
                                    </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;Signature / हस्ताक्षर</td>
                                    <td>&nbsp;&nbsp;<div style="height: 90px; width: 150px;">
                                        <img style="height: 90px; width: 150px; padding-left: 20px" src="samplesignature.jpg" />
                                    </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="mt-5">
                                <p class="col-md-1"></p>
                                <p class="col-md-11">In case of any changes/ discrepencies in the form, contact your department.<br />
                                    फॉर्म में किसी भी परिवर्तन / विसंगति के मामले में  अपने विभाग से संपर्क करे </p>
                            </div>

                            <div>
                                <input type="checkbox" class="col-md-1"/>
                                <p class="col-md-10">
                                    Disclaimer : I hereby declare that all information given above is correct. I have filled the examination form myself, in case of any mistake I will be respinsible.<br />अस्वीकरण : मैं घोषणा करता / करती हूँ कि ऊपर दी हुई जानकारियां सही हैं | मैंने स्वयं परीक्षा फॉर्म भरा है , किसी भी प्रकार की त्रुटि होने पर मई स्वयं जिम्मेदार होऊंगा /होउंगी </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

