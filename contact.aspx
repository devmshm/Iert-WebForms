<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" MasterPageFile="~/masterpages/home.master" Inherits="contact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container"> <hr />
        <h4 style="text-align:center;padding-top:10px;font-weight:bold">For Any Technical Help Contact Us </h4>
        <hr />
        <section class="w3l-contacts-12" id="contact">
            <div class="contact-top pt-5">
                <div class="container py-md-3">

                    <div class="row cont-main-top">

                        <!-- contact address -->
                        <div class="contact col-lg-12">
                            <div class="cont-subs">

                                <div class="cont-add add-2">

                                    <div class="cont-add-rgt">
                                        <h4>Email:</h4>
                                        <a href="mailto:helpdesk@iertentrance.in">
                                            <p class="contact-text-sub">helpdesk@iertentrance.in</p>
                                        </a>
                                    </div>
                                    <div class="cont-add-lft">
                                        <span class="fa fa-envelope" aria-hidden="true"></span>
                                    </div>
                                </div>
                                <div class="cont-add">

                                    <div class="cont-add-rgt">
                                        <h4>Technical Helpline </h4>
                                        <a href="tel:+8601111522">
                                            <p class="contact-text-sub">8601111522 (11:00 A.M to 5:00 P.M)</p>
                                        </a>
                                        <%-- <br />
                                        <h4>Timing</h4>

                                        <p>From 10:00 A.M to 6:00 P.M</p>--%>
                                    </div>
                                    <div class="cont-add-lft">
                                        <span class="fa fa-phone" aria-hidden="true"></span>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- //contact address -->
                        <!-- contact form -->

                        <!-- //contact form -->
                    </div>
                </div>
                <!-- map -->

                <!-- //map -->
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
