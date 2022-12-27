<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreatePlan.aspx.cs" Inherits="CreatePlan" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
   
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: gadugi;
            font-size: medium;
        }
        .auto-style3 {
            font-family: gadugi;
        }
        .auto-style4 {
            font-family: gadugi;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="width: 100%" width="50%" align="center">
                
        <table  width="90%">
       <tr>
            <td align="left" class="auto-style3" height="60px" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #808080">
                <asp:Label ID="Label13" runat="server" style="font-size: 32pt; color: #33CC33" Text="||"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Text="Create Diet Plan" Font-Size="XX-Large" ForeColor="#795B3C" style="color: #996633; font-family: gadugi;"></asp:Label>
            </td>
        </tr>
    </table>
    
&nbsp;<asp:Label ID="LabelUid" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        </table>
    <table class="auto-style1">
        <tr>
            <td width="50%">&nbsp;</td>
            <td align="center">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <asp:Label ID="Label15" runat="server" CssClass="auto-style4" Text="Disease :"></asp:Label>
                <asp:Label ID="LabelDisease" runat="server" style="font-size: x-large; font-family: gadugi; color: #333399"></asp:Label>
            </td>
            <td align="center">
                <asp:Label ID="Label16" runat="server" CssClass="auto-style4" Text="Food Type :"></asp:Label>
                <asp:Label ID="LabelFtype" runat="server" style="font-size: x-large; font-family: gadugi; color: #333399"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="50%">&nbsp;</td>
            <td align="center">&nbsp;</td>
        </tr>
    </table>
 <asp:Panel ID="Panel1" runat="server" Width="80%" >
    <table width="100%">
            <tr>
                <td align="left" style="background-color: #CCCCCC; " width="55%" height="45px">
                    <strong>&nbsp;</strong><asp:Label ID="LabelBrk" runat="server" style="font-family: gadugi; font-size: x-large" Text="Breakfast"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="LabelErr1" runat="server" style="font-family: gadugi; color: #CC0000;" Text="Minimum two field required **" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="center" height="45px" style="background-color: #CCCCCC; " width="25%">
                    <asp:Label ID="Label3" runat="server" style="font-family: gadugi; font-size: large" Text="Timing :"></asp:Label>
                    <asp:TextBox ID="TextBoxBrkTm" runat="server" Height="25px" Placeholder=" Timings.." Required="" style="font-family: gadugi; font-size: large" Type="Time" Width="50%"></asp:TextBox>
                </td>
                <td align="center"  style="background-color: #CCCCCC" width="10%">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/collapse.png" />
                </td>
            </tr>
       </table>
       </asp:Panel> 
       <asp:Panel ID="Panel2" runat="server" Width="80%" >
    <div style="width: 100%; height: 270px; background-color: #808080; color: #FFFFFF;" 
                    align="left">               
        &nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox1" runat="server" Placeholder=" Food Item 1" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox2" runat="server" Placeholder=" Add Note...." Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox3" runat="server" Placeholder=" Food Item 2" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox4" runat="server" Width="80%" Placeholder=" Add Note...." CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox5" runat="server" Width="80%" Placeholder=" Food Item 3" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox6" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox7" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Food Item 4" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox8" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
        </table>
        <br />
        </div>
            </asp:Panel>  
             <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" 
            runat="server" CollapseControlID="Panel1" CollapsedImage="~/images/Expand.png" 
            Enabled="True" ExpandControlID="Panel1" ExpandedImage="~/images/collapse.png" 
            TargetControlID="Panel2" Collapsed="True" 
            CollapsedText="Show Summarized Content" ExpandedText="Hide Summarized Content" 
            ImageControlID="Image1" SuppressPostBack="True">
        </asp:CollapsiblePanelExtender> 
    <br />
    <asp:Panel ID="Panel3" runat="server" Width="80%" >
    <table width="100%">
           <tr>
                <td align="left" style="background-color: #CCCCCC; " width="55%" height="45px">
                    <strong>&nbsp;</strong><asp:Label ID="LabelLnh" runat="server" style="font-family: gadugi; font-size: x-large" Text="Lunch"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="LabelErr2" runat="server" style="font-family: gadugi; color: #CC0000;" Text="Minimum four field required **" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="center" height="45px" style="background-color: #CCCCCC; " width="25%">
                    <asp:Label ID="Label5" runat="server" style="font-family: gadugi; font-size: large" Text="Timing :"></asp:Label>
                    <asp:TextBox ID="TextBoxLnTm" runat="server" Height="25px" Placeholder=" Timings.." Required="" style="font-family: gadugi; font-size: large" Type="Time" Width="50%"></asp:TextBox>
                </td>
                <td align="center"  style="background-color: #CCCCCC" width="10%">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/collapse.png" />
                </td>
            </tr>
       </table>
       </asp:Panel> 
       <asp:Panel ID="Panel4" runat="server" Width="80%" >
    <div style="width: 100%; height: 540px; background-color: #808080; color: #FFFFFF;" 
                    align="left">               
        &nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox9" runat="server" Placeholder=" Food Item 1" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox10" runat="server" Placeholder=" Add Note...." Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox11" runat="server" Placeholder=" Food Item 2" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox12" runat="server" Width="80%" Placeholder=" Add Note...." CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox13" runat="server" Width="80%" Placeholder=" Food Item 3" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox14" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox15" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Food Item 4" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox16" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox17" runat="server" Placeholder=" Food Item 5" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox18" runat="server" Placeholder=" Add Note...." Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox19" runat="server" Placeholder=" Food Item 6" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox20" runat="server" Width="80%" Placeholder=" Add Note...." CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox21" runat="server" Width="80%" Placeholder=" Food Item 7" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox22" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox23" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Food Item 8" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox24" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
        </table>
        <br />
        </div>
            </asp:Panel>  
             <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" 
            runat="server" CollapseControlID="Panel3" CollapsedImage="~/images/Expand.png" 
            Enabled="True" ExpandControlID="Panel3" ExpandedImage="~/images/collapse.png" 
            TargetControlID="Panel4" Collapsed="True" 
            CollapsedText="Show Summarized Content" ExpandedText="Hide Summarized Content" 
            ImageControlID="Image2" SuppressPostBack="True">
        </asp:CollapsiblePanelExtender>
    <br />
    <asp:Panel ID="Panel5" runat="server" Width="80%" >
    <table width="100%">
            <tr>
                <td align="left" style="background-color: #CCCCCC; " width="55%" height="45px">
                    <strong>&nbsp;</strong><asp:Label ID="LabelEve" runat="server" style="font-family: gadugi; font-size: x-large" Text="Evening Snacks"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelErr3" runat="server" style="font-family: gadugi; color: #CC0000;" Text="Minimum two field required **" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="center" height="45px" style="background-color: #CCCCCC; " width="25%">
                    <asp:Label ID="Label8" runat="server" style="font-family: gadugi; font-size: large" Text="Timing :"></asp:Label>
                    <asp:TextBox ID="TextBoxEveTm" runat="server" Height="25px" Placeholder=" Timings.." Required="" style="font-family: gadugi; font-size: large" Type="Time" Width="50%"></asp:TextBox>
                </td>
                <td align="center"  style="background-color: #CCCCCC" width="10%">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/collapse.png" />
                </td>
            </tr>
       </table>
       </asp:Panel> 
       <asp:Panel ID="Panel6" runat="server" Width="80%" >
    <div style="width: 100%; height: 270px; background-color: #808080; color: #FFFFFF;" 
                    align="left">               
        &nbsp;&nbsp;<table class="auto-style1">
             <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox25" runat="server" Placeholder=" Food Item 1" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox26" runat="server" Placeholder=" Add Note...." Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox27" runat="server" Placeholder=" Food Item 2" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox28" runat="server" Width="80%" Placeholder=" Add Note...." CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox29" runat="server" Width="80%" Placeholder=" Food Item 3" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox30" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox31" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Food Item 4" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox32" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
        </table>
        <br />
        </div>
            </asp:Panel>  
             <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" 
            runat="server" CollapseControlID="Panel5" CollapsedImage="~/images/Expand.png" 
            Enabled="True" ExpandControlID="Panel5" ExpandedImage="~/images/collapse.png" 
            TargetControlID="Panel6" Collapsed="True" 
            CollapsedText="Show Summarized Content" ExpandedText="Hide Summarized Content" 
            ImageControlID="Image3" SuppressPostBack="True">
        </asp:CollapsiblePanelExtender>
    <br />
    <asp:Panel ID="Panel7" runat="server" Width="80%" >
    <table width="100%">
           <tr>
                <td align="left" style="background-color: #CCCCCC; " width="55%" height="45px">
                    <strong>&nbsp;</strong><asp:Label ID="LabelDnr" runat="server" style="font-family: gadugi; font-size: x-large" Text="Dinner"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="LabelErr4" runat="server" style="font-family: gadugi; color: #CC0000;" Text="Minimum four field required **" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="center" height="45px" style="background-color: #CCCCCC; " width="25%">
                    <asp:Label ID="Label11" runat="server" style="font-family: gadugi; font-size: large" Text="Timing :"></asp:Label>
                    <asp:TextBox ID="TextBoxDnTm" runat="server" Height="25px" Placeholder=" Timings.." Required="" style="font-family: gadugi; font-size: large" Type="Time" Width="50%"></asp:TextBox>
                </td>
                <td align="center"  style="background-color: #CCCCCC" width="10%">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/collapse.png" />
                </td>
            </tr>
       </table>
       </asp:Panel> 
       <asp:Panel ID="Panel8" runat="server" Width="80%" >
    <div style="width: 100%; height: 540px; background-color: #808080; color: #FFFFFF;" 
                    align="left">               
        &nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox33" runat="server" Placeholder=" Food Item 1" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox34" runat="server" Placeholder=" Add Note...." Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox35" runat="server" Placeholder=" Food Item 2" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox36" runat="server" Width="80%" Placeholder=" Add Note...." CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox37" runat="server" Width="80%" Placeholder=" Food Item 3" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox38" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox39" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Food Item 4" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox40" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox41" runat="server" Placeholder=" Food Item 5" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox42" runat="server" Placeholder=" Add Note...." Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox43" runat="server" Placeholder=" Food Item 6" Width="80%" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox44" runat="server" Width="80%" Placeholder=" Add Note...." CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox45" runat="server" Width="80%" Placeholder=" Food Item 7" CssClass="auto-style2" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox46" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" width="40%">
                    <asp:TextBox ID="TextBox47" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Food Item 8" Height="30px"></asp:TextBox>
                </td>
                <td align="center" width="60%" style="border-left-style: solid; border-left-width: 1px; border-left-color: #FFFFFF">
                    <asp:TextBox ID="TextBox48" runat="server" Width="80%" CssClass="auto-style2" Placeholder=" Add Note...." Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="40%">&nbsp;</td>
                <td align="center" width="60%">&nbsp;</td>
            </tr>
        </table>
        <br />
        </div>
            </asp:Panel>  
             <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" 
            runat="server" CollapseControlID="Panel7" CollapsedImage="~/images/Expand.png" 
            Enabled="True" ExpandControlID="Panel7" ExpandedImage="~/images/collapse.png" 
            TargetControlID="Panel8" Collapsed="True" 
            CollapsedText="Show Summarized Content" ExpandedText="Hide Summarized Content" 
            ImageControlID="Image4" SuppressPostBack="True">
        </asp:CollapsiblePanelExtender>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-family: gadugi; font-size: x-large" Width="20%" />
       <br />
    <br />
       <br />
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
             </asp:Content>

