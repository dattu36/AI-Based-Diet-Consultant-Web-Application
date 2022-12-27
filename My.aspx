<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="My.aspx.cs" Inherits="My" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <table  width="90%">
       <tr>
            <td align="left" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label13" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Text="Personal Details" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
    
        <br />
        <table class="auto-style1">
            <tr>
                <td width="40%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="40%">
        <asp:Label ID="Label2" runat="server" Text="User Id  :" CssClass="auto-style4"></asp:Label>
                </td>
                <td align="left">
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="40%">
        <asp:Label ID="Label3" runat="server" Text="Name  :" CssClass="auto-style4"></asp:Label>
                </td>
                <td align="left">
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="40%">
        <asp:Label ID="Label4" runat="server" Text="Address  :" CssClass="auto-style4"></asp:Label>
                </td>
                <td align="left">
        <asp:TextBox ID="TextBox3" runat="server" Height="43px" TextMode="MultiLine" 
            Width="280px" ReadOnly="True" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="40%">
        <asp:Label ID="Label5" runat="server" Text="Mobile No  :" CssClass="auto-style4"></asp:Label>
                </td>
                <td align="left">
        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" width="40%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="40%">
        <asp:Label ID="Label6" runat="server" Text="E-Mail  :" CssClass="auto-style4"></asp:Label>
                </td>
                <td align="left">
        <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" 
            ReadOnly="True" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
        </table>
&nbsp;<br />
        <br />
&nbsp;
        <br />
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style3 {
            font-family: gadugi;
        }
    .auto-style4 {
        font-family: gadugi;
        font-size: large;
    }
</style>
</asp:Content>
