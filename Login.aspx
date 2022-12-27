<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
         <br />
         <table width="100%" style="border: 1px solid #C0C0C0">
        <tr>
            <td height="250" align="center" class="auto-style2">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Diet_Admin.png" PostBackUrl="~/Default.aspx" Width="190px" Height="181px" />
            </td>
            <td width="33.33%" align="center">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Diet_User.png" PostBackUrl="~/Default2.aspx" Width="191px" Height="193px" />
            </td>
            <td width="33.35%" align="center">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/Diet_Dietician.png" PostBackUrl="~/DietitianLog.aspx" Width="180px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="#333333" PostBackUrl="~/Default.aspx" style="font-family: candara; font-size: x-large">Admin Login</asp:LinkButton>
            </td>
            <td width="33.33%" align="center" height="20">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="#333333" PostBackUrl="~/Default2.aspx" style="font-family: candara; font-size: x-large">User Login</asp:LinkButton>
            </td>
            <td width="33.35%" align="center" height="20">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="#333333" PostBackUrl="~/DietitianLog.aspx" style="font-family: candara; font-size: x-large">Dietitian Login</asp:LinkButton>
            </td>
        </tr>
    </table>
        <br />
        
    </div>
</asp:Content>