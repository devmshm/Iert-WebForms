<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/masterpages/home.master" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="fr1" runat="server">
        <div class="container">
            <div class="col-md- mx-5">
                <div class="card shadow nav-border">
                    <div class="card-header bg-info">
                        Login For Payment
                    </div>
                    <div class="card-body">

                        <div class="form-horizontal">
                            <div class="mb-3">
                                <label class="control-label">Application No.</label>

                                <asp:TextBox CssClass="form-control" placeholder="Application No." ID="txtUserId" runat="server">
                                </asp:TextBox>

                            </div>
                            <div class="mb-3">
                                <label class="control-label">Password.</label>

                                <asp:TextBox CssClass="form-control" placeholder="Password" ID="txtUPassword" runat="server">
                                </asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="pull-right mx-5">
                            <asp:Button runat="server" class="btn btn-outline-success shadow bt-border" ID="btnLog" Text="Login" OnClick="btnLog_Click">

                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
