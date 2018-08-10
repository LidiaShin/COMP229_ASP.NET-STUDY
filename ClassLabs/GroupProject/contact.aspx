<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="contact.aspx.cs" Inherits="GroupProject.contact" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
<!DOCTYPE html>

<div class="wrapper_left">

<div class="contactHeading"> - Contact - 
</div><br />

<div id="searchBox">
Store Hours<br />
Monday - Friday: 10AM-6PM<br />
Saturday: 10AM-6PM<br />
Sunday: 12PM-5PM<br />

Locations<br />

674 Queen St. West
(416) 681-0368




	

<br />
</div>






</div>




<div class="wrapper_right">
<div class="contactHeading"> Contact Us
</div><br />
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
<asp:Button ID="Button1" runat="server" Text="Send" BorderStyle="None" CssClass="contactBtn" />



</div>

<div style="clear:both; font-size:1px;"></div>
</asp:Content>