<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUser.aspx.cs" Inherits="ViewUser" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <table  width="90%">
       <tr>
            <td align="left" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label3" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="User Details" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name  :-" style="font-family: gadugi; font-size: large"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" Required="" runat="server" Height="30px" style="font-size: large; font-family: gadugi"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" style="font-size: large; font-family: gadugi" />
        <br />
                <asp:Label ID="lblMsg" runat="server" style="color: #666666; font-family: calibri; font-size: x-large"></asp:Label>
                <br />
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="font-family: gadugi; font-size: medium" Width="60%">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Mobile" HeaderText="Contact no" />
                    <asp:BoundField DataField="Email" HeaderText="Email ID" />
                    <asp:BoundField DataField="Disease" HeaderText="Disease" />
                </Columns>
    </asp:GridView>
    
        <br />
        <br />
    
    </div>
</asp:Content>