<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <br />
    <table width="60%">
        <tr>
            <td colspan="2" align="left" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="User Login" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: xx-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td width="30%" align="right">&nbsp;<asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="User ID  "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td align="center" style="border-left-style: solid; border-left-width: 1px; border-left-color: #808080;">
                <asp:TextBox ID="TextBoxID" runat="server" CssClass="auto-style4" Height="35px" Placeholder=" Enter User ID" Required="" Width="80%" style="font-family: gadugi; font-size: large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="center">
                <br />
&nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td align="center" style="border-left-style: solid; border-left-width: 1px; border-left-color: #808080;">
                <asp:TextBox ID="TextBoxPass" runat="server" Height="35px" Width="80%" CssClass="auto-style4" Placeholder=" Enter Password" Required="" TextMode="Password" style="font-family: gadugi; font-size: large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" CssClass="auto-style3" Height="40px" Width="20%" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/CReg.aspx" Font-Underline="False" style="font-family: gadugi">Sign Up</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
    <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">

        .auto-style2 {
            font-family: gadugi;
            font-size: x-large;
        }
    .auto-style3 {
        font-family: gadugi;
        font-size: large;
    }
    </style>
</asp:Content>
