<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/result.master" AutoEventWireup="true" CodeFile="resultt.aspx.cs" Inherits="resultt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-5">
        <div class="card" style="vertical-align: middle">
            <div class="card-body">
                <table class="tblprint" style="width: 100%;">
                    <tr style="text-align: center">
                        <td rowspan="2" style="width: 50px; text-align: center; vertical-align: middle">
                            <img src="favicon.png" style="height: 90px" /></td>
                        <td style="font-size: 25px">INSTITUTE OF ENGINEERING AND RURAL TECHNOLOGY (IERT)
                   
                        </td>
                    </tr>
                    <tr style="text-align: center">
                        <td>26, CHATHAM LINES, PRAYAGRAJ - 211002 (U.P), INDIA
                        </td>
                    </tr>
                </table>
                <div class="col-md-12 mx-5">
                    <p style="text-align: center;">
                        <br />
                        <span style="font-size: 16px; font-weight: bold">Intimation Letter For Counselling/Provisional Admission To</span>
                        <br />
                        <span style="font-size: 18px;" runat="server" id="dvcourse"></span>
                        <br />
                        <%--<span style="font-size: 19px;">ENTRANCE EXAMINATION 2023 HELD ON 30th June 2023</span>--%>
                        <%--<br />--%>
                        <hr />
                        <span class="pull-left" style="font-weight: bold">Ref. No.IERT/ENT/<span id="sprefno" runat="server"></span></span>
                        <span class="pull-right" style="margin-right: 3em; font-weight: bold">DATE : <span id="spdate" runat="server"></span></span>
                    </p>

                </div>
            </div>
       
                <table class="mt-2 mx-5 tblprint" width="95%" style="margin-left: auto; margin-right: auto">
                    <tr>
                        <td colspan="2" id="name" style="padding: 5px"><span style="font-weight: bold">NAME OF CANDIDATE : </span><span id="dvname" runat="server"></span>
                            <br />
                            <span style="font-weight: bold">S/D/O :</span>  <span id="dvfname" runat="server"></span>
                        </td>

                        <td rowspan="2" style="vertical-align: middle; text-align: center; padding: 5px">
                            <img id="dvphoto" runat="server" style="height: 120px; width: 120px;" /></td>
                        <td rowspan="2" style="vertical-align: middle; text-align: center; padding: 5px">
                            <img id="dvthumb" runat="server" style="height: 60px; width: 100px;" />
                            <br />
                            <img id="dvsign" runat="server" style="height: 60px; width: 100px;" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding: 5px" id="dvaddname" runat="server"></td>

                    </tr>
                </table>
                <div class="mt-5 mx-5" style="margin-left: auto; margin-right: auto">
                    <h4 style="font-size: 16px" class="mt-3"><b>Dear Candidate,
                    </b></h4>
                    <div style="padding: 5px">
                        <span>You have secured merit position as mentioned below in the result of IERT Entrance Examination 2023</span>
                    </div>
                    <table class="mt-5 mx-5 tblprint" width="95%" style="margin-left: auto; margin-right: auto">
                        <tr style="text-align: center; font-weight: bold">
                            <td style="padding: 5px">Roll No</td>
                            <td style="padding: 5px">Ticket No.</td>
                            <td style="padding: 5px">Oveall Merit & Sub Category Merit</td>
                        </tr>
                        <tr style="text-align: center">
                            <td style="padding: 5px"><span ID="dvroll" runat="server"></span></td>
                            <td style="padding: 5px"><span ID="dvtoken" runat="server"></span></td>
                            <td style="padding: 5px"><span runat="server" ID="dvmerit"></span></td>
                        </tr>
                    </table>
                    <div class="mt-5">
                        <span class="mt-2">You are required to report personally for counselling to take provisional admission on <b><span id="spdate1" runat="server"></span> </b>at 
                    <b><span id="sptime" runat="server"></span></b> sharp at the IERT campus.<br />
                            Kindly follow the instructions given in the attached instruction sheets and bring all the documents and
                    cash as mentioned in the sheet, failing which will disqualify you from counselling and provisional
                    admission. Not reporting personally or late reporting will also disqualify you from counselling and
                    provisional admission.

                        </span>
                    </div>
                </div>
                <br />
                <hr />
                <div class="mt-5 mx-2">
                    <div class="pull-left col-md-4" style="vertical-align: middle; float: left">
                        <p>
                            Encl : Instruction sheet
                        </p>
                        <br />
                    </div>
                    <div class="pull-right col-md-4" style="text-align: center; float: right">
                        <p style="border: solid 1px; height: 70px; width: 300px;">
                            <img src="signature.png" style="height: 60px; width: 290px; vertical-align: bottom; padding: 2px" />
                        </p>
                        <br />
                        <p style="text-align: center">
                            Coordinator Entrance<br />
                            Examination 2023 IERT<br />
                            Prayagraj
                        </p>
                         <br /><br />
                    </div>
                   
                </div>
            </div>
        </div>


    <div class="container">
        <br />
        <div class="panel">
            <div class="container mt-5"  runat="server">
                <div style="font-size: 25px; text-align: center; page-break-before: always">
                    <u style="font-weight: bold">INSTRUCTION FOR COUNSELLING OF ENTRANCE EXAM 2023-24</u>
                    <br />
                    <img src="1.jpg" class="img img-responsive" />
                    <br />
                    <img src="2.jpg" class="img img-responsive" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

