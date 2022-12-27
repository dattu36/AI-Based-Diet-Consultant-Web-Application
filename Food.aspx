<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Food.aspx.cs" Inherits="Food" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Food Pyramid"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/foodpyramid.gif" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Diet Chart"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/food-chart.jpg" />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>