<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PersonalisedPlan.aspx.cs" Inherits="PersonalisedPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            font-family: gadugi;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  width="90%">
       <tr>
            <td align="left" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label13" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Text="My Personalised Diet Plan" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
    
<table class="auto-style1">
        <tr>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-family: gadugi" Width="80%">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                    <Columns>
                <asp:BoundField HeaderText="Type" DataField="Type"/>
                <asp:BoundField HeaderText="Time" DataField="Time"/>
                <asp:BoundField HeaderText="Food Item" DataField="FoodItem" />
                <asp:BoundField HeaderText="Note" DataField="Note" />
                </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" style="color: #990033">
                <asp:Label ID="Label2" runat="server" style="font-family: gadugi; color: #CC0000" Text="Request a Personalised Diet Plan to Dietitian" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top"><span class="auto-style4">
                <br />
                Note:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="80px" TextMode="MultiLine" Width="30%"></asp:TextBox>
                <br />
&nbsp; </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Height="49px" OnClick="Button1_Click" style="font-family: gadugi; font-size: large" Width="172px" />
            </td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

