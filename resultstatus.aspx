<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/masterpages/result.master" CodeFile="resultstatus.aspx.cs" Inherits="resultstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="container mt-2">
        <div class="pull-right nprintdiv mx-5">
            <div class="btn btn-success mx-5 btn-lg shadow" onclick="rePrint();">
                <i class="fa fa-print"></i>&nbsp;Print
            </div>
        </div>
    </div>
    <div class="container">
        <form id="frm2" runat="server">
            <div class="card mt-5 shadow" style="vertical-align: middle">
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
                    <div class="col-md-12 mx-5 mt-3">
                        <p style="text-align: center;">
                            <span style="font-size: 18px;" runat="server" id="dvcourse"></span>
                            <br />
                            <%-- <span style="font-size: 19px;">ENTRANCE EXAMINATION 2023 HELD ON 30th June 2023</span>
                            <br />--%>

                            <%--<span class="pull-left" style="font-weight: bold">Ref. No.IERT/ENT/ENGG-2022/21757-24388</span>
                <span class="pull-right" style="margin-right: 3em; font-weight: bold">DATE : 17-07-2023</span>--%>
                        </p>

                    </div>
                </div>
                <div class="mx-5">
                    <div class="table table-responsive">
                        <table class="mt-2 table table-bordered table-hover table-condensed">
                            <tr>
                                <td id="name" style="padding: 5px; text-align: right;"><span style="font-weight: bold;">NAME OF CANDIDATE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                </td>
                                <td style="padding: 5px">
                                    <span id="dvname" runat="server"></span>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; text-align: right;">
                                    <span style="font-weight: bold">ROLL  NO. &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</span>
                                </td>
                                <td style="padding: 5px"><span id="dvroll" runat="server"></span></td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; text-align: right; font-weight: bold">STATUS &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</td>
                                <td style="padding: 5px"><span id="dvstatus" runat="server"></span></td>
                            </tr>
                            <tr runat="server" id="trmerit">
                                <td style="padding: 5px; text-align: right; font-weight: bold">MERIT &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</td>
                                <td style="padding: 5px"><span id="dvmerit" runat="server"></span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="mt-2 mx-5" style="margin-left: auto; margin-right: auto">
                        <table class=" mx-5 tblprint" width="95%" style="margin-left: auto; margin-right: auto">
                        </table>
                        <div class="mt-5">
                            <ul class="mt-2">
                                <li>The Counselling for Admission in <b>'3 YEAR ( 6 SEMESTER) ENGINEERING / TECHNOLOGY DIPLOMA'</b> ,
                    <b>'ONE & HALF YEAR (3 SEMESTER ) POST DIPLOMA IN COMPUTER APPLICATION'</b> and <b>'2 YEAR (4 SEMESTER) MANAGEMENT DIPLOMA'</b>
                                    would be held in the Second Week of August 2023.</li>
                                <li class="mt-2">The Counselling Letter will be available shortly on this website for download. No other way the Intimation for Counselling is given.
                                </li>
                                

                            </ul>
                        </div>


                    </div>

                </div>
            </div>
            <br />
            <div class="panel">
                <div class="container mt-5" id="dvfame" runat="server">
                    <div style="font-size: 25px; text-align: center; page-break-before: always">
                        <u style="font-weight:bold">INSTRUCTION FOR COUNSELLING OF ENTRANCE EXAM 2023-24</u>
                        <br />
                        <img src="1.jpg" class="img img-responsive" />
                        <br />
                        <img src="2.jpg" class="img img-responsive" />
                    </div>
                </div>
            </div>
            <br />
            <br />
        </form>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
