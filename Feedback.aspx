<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table width="100%">
        <tr>
         <td align="center" style="width: 80%; background-color: #CCCCCC;">
                    <asp:Label ID="Label8" runat="server" style="font-family: gadugi; font-size: xx-large" Text="Write Feedback"></asp:Label>
                </td>
             </tr>
        <tr>
            <td>
                <asp:Label ID="LabelId" runat="server" Visible="False"></asp:Label>
                <br />
&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBox1" Required="" Placeholder=" Your Message......" runat="server" Height="100px" TextMode="MultiLine" Width="50%"></asp:TextBox>
                <br />
                <br />
        <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" style="font-family: gadugi; font-size: large" Text="Submit" Width="20%" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

