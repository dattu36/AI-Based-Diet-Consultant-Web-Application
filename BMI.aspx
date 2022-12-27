<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BMI.aspx.cs" Inherits="BMI" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <table  width="90%">
       <tr>
            <td align="left" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label13" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Text="BMI Calculator" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Weight  :-" CssClass="auto-style2"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" Required="" runat="server" CssClass="auto-style2"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="( Lbs )" CssClass="auto-style3"></asp:Label>
&nbsp;
        <asp:Label ID="Label9" runat="server" Text="( 10 kg=22 lbs )" CssClass="auto-style3"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Height  :-" CssClass="auto-style2"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" Required="" runat="server" CssClass="auto-style2"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label5" runat="server" Text="(Inch)" CssClass="auto-style3"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Calculate" style="font-family: gadugi; font-size: x-large" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Your BMI is : " Visible="False" style="font-family: gadugi; font-size: large"></asp:Label>
        <asp:Label ID="LabelBMI" runat="server" Text="Label" Visible="False" style="font-family: gadugi; font-size: x-large; font-weight: 700"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="You are :" Visible="False" style="font-family: gadugi; font-size: large"></asp:Label>
        &nbsp;&nbsp;<asp:Label ID="LabelResult" runat="server" Visible="False" style="font-family: gadugi; font-size: large"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Size="Large" 
            Text="Please Login to get your Free Diet Plan" Visible="False" style="font-family: gadugi; background-color: #CCCCCC"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Get Diet Plan" 
            Visible="False" style="font-family: gadugi; font-size: large" />
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
        .auto-style3 {
            font-family: gadugi;
        }
    </style>
</asp:Content>
