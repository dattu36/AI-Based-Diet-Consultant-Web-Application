<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <center style="font-size: large">
 <br />
    <table width="60%">
        <tr>
            <td colspan="2" align="left" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Admin Login" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: xx-large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td width="30%" align="right">&nbsp;<asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Admin Id  "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td align="center" style="border-left-style: solid; border-left-width: 1px; border-left-color: #808080;">
                <asp:TextBox ID="TextBoxID" runat="server" CssClass="auto-style4" Height="35px" Placeholder=" Enter Admin ID" Required="" Width="80%" style="font-family: gadugi; font-size: large"></asp:TextBox>
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
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" style="font-family: gadugi; font-size: large" Height="40px" Width="20%" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
    </center>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            font-family: gadugi;
            font-size: x-large;
        }
    </style>
</asp:Content>
