<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="contact.aspx.cs" Inherits="GroupProject.contact" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
<!DOCTYPE html>

<div class="wrapper_left">
**** Contact Info Here ****
<hr />
</div>

<div class="wrapper_right">
**** Contact window Here ****
<hr />
<table style="width: 100%;">
<tr>
<asp:TextBox ID="uName" runat="server" placeholder="Name" Width="50%"></asp:TextBox>
<asp:TextBox ID="eMail" runat="server" placeholder="Email" Width="50%"></asp:TextBox>
</tr>

<tr>
<td><asp:TextBox ID="subject" runat="server" placeholder="Subject" Width="100%"></asp:TextBox></td>
</tr>


<tr>
<td><asp:TextBox ID="content" runat="server" placeholder="Special inquiry or request" Width="100%" Height="100px"></asp:TextBox> </td>
</tr>
          
</table>




</div>

<div style="clear:both; font-size:1px;"></div>
</asp:Content>