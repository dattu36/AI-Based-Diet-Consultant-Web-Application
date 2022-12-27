<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DietitianLog.aspx.cs" Inherits="DietitianLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-family: gadugi;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table width="60%">
        <tr>
            <td colspan="2" align="left" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Dietitian Login" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: xx-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td width="30%" align="right">&nbsp;<asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Email ID  " style="font-family: gadugi; font-size: x-large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td align="center" style="border-left-style: solid; border-left-width: 1px; border-left-color: #808080;">
                <asp:TextBox ID="TextBoxID" runat="server" CssClass="auto-style4" Height="35px" Placeholder=" Enter Email ID" Required="" Width="80%" style="font-family: gadugi; font-size: large"></asp:TextBox>
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
                <asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="Password" style="font-family: gadugi; font-size: x-large"></asp:Label>
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
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" CssClass="auto-style1" Height="40px" Width="20%" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;</td>
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
        &nbsp;</div>
</asp:Content>

