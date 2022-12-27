<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewRequest.aspx.cs" Inherits="ViewRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  width="90%">
       <tr>
            <td align="left" colspan="4" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label3" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Request" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
               
    <br />
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand" style="font-family: gadugi; font-size: medium" Width="80%">
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
                    <asp:BoundField DataField="Uid" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Mob" HeaderText="Contact No" />
                    <asp:BoundField DataField="Disease" HeaderText="Disease" />
                    <asp:BoundField DataField="Date" HeaderText="Date" />
                    <asp:BoundField DataField="Note" HeaderText="Note" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Uid")%>' CommandName="Select" Font-Bold="False" ForeColor="#009933" style="color: #00CC99" Text="Create Plan"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
    </asp:GridView>
    <br />
                <asp:Label ID="lblMsg" runat="server" style="color: #666666; font-family: calibri; font-size: x-large"></asp:Label>
                <br />
                <br />
<br />
                <br />
</asp:Content>

