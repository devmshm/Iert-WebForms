<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sheet.aspx.cs" Inherits="admin_sheet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style>
        body {
            font-family: Arial;
            font-size: 10px;
            margin: 0px;
            vertical-align:top
        }
        table td,th{
            padding:0px;
            vertical-align:top;
            height:10px;
            font-size:12px;
        }
        table tr{
            height:10px;
            vertical-align:top
        }
    </style>
    <style type="text/css">
        @media print {
            #printButton {
                display: none;
            }

            #Home {
                display: none;
            }
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">
        <div class="form-group" id="printButton">
            <label><strong>Select Post</strong></label>
            <asp:DropDownList CssClass="form-control border-info" ID="ddlcenter" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlpost_SelectedIndexChanged">
                <asp:ListItem Value="-1">SELECT</asp:ListItem>

            </asp:DropDownList>
        </div>
        <asp:Repeater ID="rprtSheet" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <%# (Container.ItemIndex ) % 4 == 0? TableHeader : "" %>
                <tr style="border: solid 1px #000;">
                    <td rowspan="7" style="width: 40px; height: 60px; border-bottom: solid 1px #000; vertical-align: top; font-weight: bold; border-top: none; border-right: solid 1px #000">
                        <%#(Container.ItemIndex+1).ToString() %>
                    </td>
                    <td style="width: 10px; font-weight: bold;">Roll No
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "Rollno")%>
                    </td>
                   
                    <td style="width:220px;border-right: solid 1px #000;padding:3px; border-left: solid 1px #000; border-bottom: solid 1px #000; vertical-align: middle; text-align: center;"
                        rowspan="3" >
                         <img src='photo/<%#DataBinder.Eval(Container.DataItem,"Candidate_photo") %>' height="80" width="90" />&nbsp;&nbsp;<img src='photo/<%#DataBinder.Eval(Container.DataItem,"CANDIDATE_THUMB") %>' height="60" width="120" />                                              
                    </td>
                    <td colspan="2" style="width: 120px; font-size: 10px;">Test Booklet No.
                    </td>
                    <td colspan="1" style="width: 5px; font-size: 11px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Series 
                    </td>
                </tr>

                <tr>
                     <td  style="width: 90px; font-weight: bold;">Application No.
                    </td>
                    <td colspan="2">
                        <%#DataBinder.Eval(Container.DataItem, "APPLICATION_NO")%>
                    </td>
                    
                    <td colspan="2" style="border-bottom: solid 1px #000;">
                        <tb style="border: solid 1px #000; font-size: 15px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 15px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 15px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 15px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 15px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                         <tb style="border: solid 1px #000; font-size: 15px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                    </td>
                    <td style="border-bottom: solid 1px #000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tb style="border: solid 1px #000; font-size: 17px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb></td>
                </tr>
              
                <tr>
                    <td style="width: 110px; font-weight: bold;">Candidate's Name
                    </td>
                    <td colspan="" style="text-transform: uppercase; font-weight: bold;">
                        <%#DataBinder.Eval(Container.DataItem, "fullname")%>
                    </td>
                    <td colspan="3" style="width: 90px; font-size: 12px; border-bottom: solid 1px #000">OMR No.<br />
                        <tb style="border: solid 1px #000; font-size: 17px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 17px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 17px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 17px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 17px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        <tb style="border: solid 1px #000; font-size: 17px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                        
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; width: 60PX;">Father's Name
                    </td>
                    <td style="text-transform: uppercase;width: 150px">
                        <%#DataBinder.Eval(Container.DataItem, "FATHER_NAME")%>
                    </td>
                    <td style="text-align:center;border: solid 1px #000"><img src='photo/<%#DataBinder.Eval(Container.DataItem,"CANDIDATE_SIGN") %>' height="40" width="160" /></td>
                    <td colspan="3" style="height:40px;width: 90px; font-size: 12px; border-bottom: solid 1px #000;">Invigilator's Sign
                     
                    </td>

                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold;">Date Of Birth
                    </td>
                    <td style="">
                        <%#DataBinder.Eval(Container.DataItem, "DOB")%>
                    </td>
                 
                    <td rowspan="3" style="height:60px;font-size:9px;border: solid 1px #000; border-bottom: solid 1px #000;  text-align: center">
                       Left Hand Thumb Impression
                        <br />
                         <br />
                    </td>
                    <td rowspan="3" colspan="2" style="width: 180px;font-size: 12px; border-bottom: solid 1px #000;">Candidate's Sign.
                    </td>
                </tr>
                   <tr>
                    <td style="width: 100px; font-weight: bold; ">Category
                    </td>
                    <td style="">
                        <%#DataBinder.Eval(Container.DataItem, "CATEGORY")%>
                    </td>
                    
                 
                </tr>
                <tr>
                    <td style="width: 100px; font-weight: bold; border-bottom: solid 1px #000;">Sub Category
                    </td>
                    <td style="border-bottom: solid 1px #000;">
                        <%#DataBinder.Eval(Container.DataItem, "sub_CATEGORY")%>
                    </td>
                    <td colspan="3" style="border-bottom: solid 1px #000;">&nbsp;
                    </td>                    
                </tr>
                <%#(Container.ItemIndex + 1) % 4 == 0 || (Container.ItemIndex + 1) == Noofrow ?  "<tr style='height:10px'><td colspan='3' style='border-right:solid 1px #000;font-weight:bold;font-size:12px;'>Note: ABSENT MUST BE MARKED USING RED PEN &nbsp;</td><td  style='text-align:left;border-right:solid 1px #000;font-weight:bold;font-size:12px;'>&nbsp;TOTAL PRESENT  &nbsp;|</td><td></td><td style='border-left:solid 1px #000; border-right:solid 1px #000; font-weight:bold;font-size:12px;'>TOTAL ABSENT</td><td></td></tr><br>" : ""%>
                <%#(Container.ItemIndex + 1) % 4 == 0 || (Container.ItemIndex + 1) == Noofrow ? "<tr style='height:10px'><td colspan='2' style='border: solid 1px #000;text-align:left; font-weight: bold; font-size: 12px;'>Signature & Name of Invigilator - I</td><td style='border-top: solid 1px #000;border-bottom:solid 1px #000'></td><td rowspan='2'  style='border-top:solid 1px #000;vertical-align:middle;border:solid 1px #000;text-align: center; font-weight: bold; font-size: 12px;'>Signature & Seal of Suprintendent&nbsp;</td><td  rowspan='2' style='border-top: solid 1px #000;border-bottom: solid 1px #000;vertical-align:middle ;font-weight: bold; font-size: 13px;text-align:center'></td><td colspan='3' rowspan='2' style='border-bottom:solid 1px #000;border-top:solid 1px #000;'></td></tr><tr style='height:10px'><td colspan='2' style='border: solid 1px #000;text-align:left; font-weight: bold; font-size: 12px;'>Signature & Name of Invigilator - II</td><td style='border-top: solid 1px #000;border-bottom:solid 1px #000'></td><td style='border-top:solid 1px #000;border-bottom:solid 1px #000;text-align: center; font-weight: bold; font-size: 13px;'></td></tr>" : ""%>

                <%#(Container.ItemIndex + 1) % 4 == 0 || (Container.ItemIndex + 1) == Noofrow ? "<tr style='height:10px'> <td colspan='10' style='text-align:center; font-weight:bold; font-size:13px;' >Page No.: " +(((Container.ItemIndex + 1) / 4)+((Container.ItemIndex + 1) == Noofrow && (Container.ItemIndex + 1) % 4 != 0 ? 1 : 0)).ToString() + "</td>" : ""%>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    </form>
</body>
</html>
