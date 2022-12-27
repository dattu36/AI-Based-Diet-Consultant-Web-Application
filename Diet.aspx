<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Diet.aspx.cs" Inherits="Diet" %>


<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div style="font-size: large">
    
        <table  width="90%">
        <tr>
            <td align="left" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label10" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" Text="Your Diet Plan" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
        <asp:Panel ID="pnlContents" runat="server">
            <br />
            <center>
            <table width="50%">
                <tr>
                    <td style="font-family: 'Calibri Light'" width="50%">Name :
                        <asp:Label ID="LabelName" runat="server" CssClass="auto-style4" Font-Names="Calibri"></asp:Label>
                        <br />
                    </td>
                    <td style="font-family: 'Calibri Light'" width="50%">Weight :
                        <asp:Label ID="LabelW" runat="server" CssClass="auto-style4" Font-Names="Calibri"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Calibri Light'" width="50%">ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        <asp:Label ID="LabelID" runat="server" CssClass="auto-style4" Font-Names="Calibri"></asp:Label>
                    </td>
                    <td style="font-family: 'Calibri Light'" width="50%">Height&nbsp; :
                        <asp:Label ID="LabelH" runat="server" CssClass="auto-style4" Font-Names="Calibri"></asp:Label>
                    </td>
                </tr>
            </table>
                </center>
            <br />
            <hr />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Breakfast at : "></asp:Label>
        <asp:Label ID="Label3" Font-Bold="true" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" AutoGenerateColumns="false" RowStyle-HorizontalAlign="Center" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" Width="55%" CssClass="auto-style1">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
            <Columns>
                    <asp:BoundField DataField="Item" HeaderText="Item" />
                    <asp:BoundField DataField="Protine" HeaderText="Protein" />
                    <asp:BoundField DataField="Carbo" HeaderText="Carbohydrate" />
                </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Lunch at : " CssClass="auto-style2"></asp:Label>
        <asp:Label ID="Label5" Font-Bold="true" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" AutoGenerateColumns="false" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" Width="55%" CssClass="auto-style1">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
              <Columns>
                    <asp:BoundField DataField="Item" HeaderText="Item" />
                    <asp:BoundField DataField="Protine" HeaderText="Protein" />
                    <asp:BoundField DataField="Carbo" HeaderText="Carbohydrate" />
                </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Snacks at : " CssClass="auto-style2"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="true" Text="Label" CssClass="auto-style2"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView3" AutoGenerateColumns="false" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" Width="55%" CssClass="auto-style1">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
              <Columns>
                    <asp:BoundField DataField="Item" HeaderText="Item" />
                    <asp:BoundField DataField="Protine" HeaderText="Protein" />
                    <asp:BoundField DataField="Carbo" HeaderText="Carbohydrate" />
                </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Dinner at : " CssClass="auto-style2"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="true" Text="Label" CssClass="auto-style2"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView4" AutoGenerateColumns="false" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" Width="55%" CssClass="auto-style1">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
              <Columns>
                    <asp:BoundField DataField="Item" HeaderText="Item" />
                    <asp:BoundField DataField="Protine" HeaderText="Protein" />
                    <asp:BoundField DataField="Carbo" HeaderText="Carbohydrate" />
                </Columns>
        </asp:GridView>
        <br />
        <br />
            </asp:Panel>
         <asp:Button ID="Button2" runat="server" Height="49px" style="font-family: gadugi; font-size: large" Width="172px" OnClientClick = "return PrintPanel();" Text="Print Diet Plan" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="49px" style="font-family: gadugi; font-size: large" Width="172px" PostBackUrl="~/PersonalisedPlan.aspx" Text="Request Diet Plan" />
            <br />
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            font-family: gadugi;
        }
        .auto-style2 {
            font-family: gadugi;
            text-decoration: underline;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-weight: bold;
        }
    </style>
     <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=800,width=1000');
            printWindow.document.write('<html><head><title></title>');
            printWindow.document.write('</head><body><center><h2>Your Diet Plan</h2>');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</center></body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
</asp:Content>

