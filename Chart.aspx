<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chart.aspx.cs" Inherits="Chart" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Diet Chart" style="font-family: gadugi"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="568px" 
            ImageUrl="~/images/food-chart.jpg" Width="849px" />
        <br />
        <br />
    
    </div>
</asp:Content>