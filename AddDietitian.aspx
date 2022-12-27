<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDietitian.aspx.cs" Inherits="AddDietitian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-family: gadugi;
        font-size: large;
    }
        .auto-style3 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  width="90%">
        <tr>
            <td align="left" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label3" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Add Deititian" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
    <tr>
        <td colspan="2" align="center">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">Name :</td>
        <td align="left">
            <asp:TextBox ID="TextBoxName" Required="" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">&nbsp;</td>
        <td align="left" class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">Contact No. :</td>
        <td align="left">
            <asp:TextBox ID="TextBoxMob" Required="" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">&nbsp;</td>
        <td align="left" class="auto-style2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxMob" CssClass="auto-style4" ErrorMessage="Invalid Contact No." style="font-family: gadugi; color: #CC0000; font-size: medium;" ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">Email ID :</td>
        <td align="left">
            <asp:TextBox ID="TextBoxEmail" Required="" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">&nbsp;</td>
        <td align="left" class="auto-style2">
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style4" ErrorMessage="Invalid Email Id" style="font-family: gadugi; color: #CC0000; font-size: medium;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">Gender :</td>
        <td align="left">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" style="font-family: gadugi; font-size: large" Width="40%">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">&nbsp;</td>
        <td align="left" class="auto-style2">
            <asp:Label ID="LabelErr" runat="server" style="color: #CC0000; font-size: medium" Text="This field cannot be left blank" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">Password :</td>
        <td align="left">
            <asp:TextBox ID="TextBoxPass" Required="" runat="server" CssClass="auto-style2" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">&nbsp;</td>
        <td align="left">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="font-size: large" />
        </td>
    </tr>
    <tr>
        <td align="right" class="auto-style2" width="45%">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
</table>
</asp:Content>

