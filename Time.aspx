<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Time.aspx.cs" Inherits="Time" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="False" 
            Text="Timings" style="font-family: gadugi; font-size: xx-large"></asp:Label>
        <table style="border-top-style: solid; border-top-width: 1px; border-top-color: #808080" width="80%">
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">
        <asp:Label ID="Label2" runat="server" Text="Breakfast  :-" CssClass="auto-style2"></asp:Label>
                </td>
                <td align="left">
        <asp:DropDownList ID="DropDownList1" runat="server" Width="25%" CssClass="auto-style2">
            <asp:ListItem>07:00 AM</asp:ListItem>
            <asp:ListItem>08:00 AM</asp:ListItem>
            <asp:ListItem>08:30 AM</asp:ListItem>
            <asp:ListItem>09:00 AM</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">
        <asp:Label ID="Label3" runat="server" Text="Lunch  :-" CssClass="auto-style2"></asp:Label>
                </td>
                <td align="left">
        <asp:DropDownList ID="DropDownList2" runat="server" Width="25%" CssClass="auto-style2">
            <asp:ListItem>12:00 PM</asp:ListItem>
            <asp:ListItem>12:30 PM</asp:ListItem>
            <asp:ListItem>01:00 PM</asp:ListItem>
            <asp:ListItem>01:30 PM</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">
        <asp:Label ID="Label4" runat="server" Text="Snacks  :-" CssClass="auto-style2"></asp:Label>
                </td>
                <td align="left">
        <asp:DropDownList ID="DropDownList3" runat="server" Width="25%" CssClass="auto-style2">
            <asp:ListItem>04:00 PM</asp:ListItem>
            <asp:ListItem>04:30 PM</asp:ListItem>
            <asp:ListItem>05:00 PM</asp:ListItem>
            <asp:ListItem Value="05:30 PM">05:30 PM</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">
        <asp:Label ID="Label5" runat="server" Text="Dinner  :-" CssClass="auto-style2"></asp:Label>
                </td>
                <td align="left">
        <asp:DropDownList ID="DropDownList4" runat="server" Width="25%" CssClass="auto-style2">
            <asp:ListItem>08:00 PM</asp:ListItem>
            <asp:ListItem>08:30 PM</asp:ListItem>
            <asp:ListItem>09:00 PM</asp:ListItem>
            <asp:ListItem>09:30 PM</asp:ListItem>
            <asp:ListItem>10:00 PM</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
        </table>
&nbsp; 
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed" />

        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            font-family: gadugi;
            font-size: large;
        }
    </style>
</asp:Content>

