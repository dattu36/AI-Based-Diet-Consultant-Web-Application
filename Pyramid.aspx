<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Pyramid.aspx.cs" Inherits="Pyramid" %>


<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Food Pyramid" style="font-family: gadugi"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="501px" 
            ImageUrl="~/images/foodpyramid.gif" Width="590px" />
        <br />
    
    </div>
</asp:Content>