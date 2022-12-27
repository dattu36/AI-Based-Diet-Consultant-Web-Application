<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CReg.aspx.cs" Inherits="CReg" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Registration"></asp:Label>
        <br />
        <br />
        <br />
    
        <table width="80%">
            <tr>
                <td width="30%" align="right">
                
        <asp:Label ID="Label2" runat="server" Text="User ID  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
        <asp:TextBox ID="TextBoxUid" runat="server" ReadOnly="True" Width="80%"></asp:TextBox>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td width="30%" align="right">
                
        <asp:Label ID="Label3" runat="server" Text="Name  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
        <asp:TextBox ID="TextBoxName" runat="server" Width="80%"></asp:TextBox>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td width="30%" align="right" valign="middle">
                
        <asp:Label ID="Label4" runat="server" Text="Address  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
        <asp:TextBox ID="TextBoxAdd" runat="server" Height="36px" TextMode="MultiLine" 
            Width="80%"></asp:TextBox>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td width="30%" align="right">
                
        <asp:Label ID="Label5" runat="server" Text="Mobile No  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
        <asp:TextBox ID="TextBoxMob" runat="server" Width="80%"></asp:TextBox>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td width="30%" align="right">
                
                    <asp:Label ID="Label6" runat="server" Text="Email  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
        <asp:TextBox ID="TextBoxEmail" runat="server" Width="80%"></asp:TextBox>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td width="30%" align="right">
                
                    <asp:Label ID="Label10" runat="server" Text="Food Prefered  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" Width="80%" CssClass="auto-style1">
                        <asp:ListItem Selected="True">Veg</asp:ListItem>
                        <asp:ListItem>Non-Veg</asp:ListItem>
                    </asp:RadioButtonList>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td width="30%" align="right">
                
                    <asp:Label ID="Label11" runat="server" Text="Disease :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" CssClass="auto-style1">
                        <asp:ListItem>Diabetes</asp:ListItem>
                        <asp:ListItem>Blood Pressure</asp:ListItem>
                        <asp:ListItem>Cancer</asp:ListItem>
                    </asp:CheckBoxList>
                
                </td>
                <td width="30%" align="left">
                
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="30%" align="right">
                
        <asp:Label ID="Label7" runat="server" Text="Password  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="80%"></asp:TextBox>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td width="30%" align="right">
                
        <asp:Label ID="Label8" runat="server" Text="Confirm Password  :-" CssClass="auto-style1"></asp:Label>
                
                </td>
                <td width="40%" align="center">
                
        <asp:TextBox ID="TextBoxCnPass" runat="server" TextMode="Password" Width="80%"></asp:TextBox>
                
                </td>
                <td width="30%" align="left">
                
                </td>
            </tr>
            <tr>
                <td colspan="1" align="right">
                
                    &nbsp;</td>
                <td colspan="1">
                
                    <br />
                    <br />
                
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                        CssClass="intabular" Height="40px" Width="100px" style="font-size: large" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Cancel" 
                        CssClass="intabular" Height="40px" Width="100px" style="font-size: large" />
                
                </td>
                <td>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        font-family: gadugi;
    }
</style>
</asp:Content>
