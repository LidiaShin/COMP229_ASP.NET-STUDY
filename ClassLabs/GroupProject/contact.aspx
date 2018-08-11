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


<asp:TextBox ID="emailAddress" runat="server" placeholder="email (gmail)" Width="55%"></asp:TextBox>
<asp:TextBox ID="emailPassword" runat="server" TextMode = "Password" placeholder="gmail password" Width="35%" ></asp:TextBox>
<br /><br />


<asp:TextBox ID="emailSubject" runat="server" placeholder="subject" Width="100%"></asp:TextBox>
	
<br /><br />
<asp:TextBox ID="emailContent" runat="server" placeholder="content" Width="100%" TextMode = "MultiLine"></asp:TextBox>
<br /><br />
<asp:FileUpload ID="fileAttach" runat="server" />
<asp:Button Text="Send" OnClick="SendEmail" runat="server" CssClass="contactBtn" />

</div>
<div style="clear:both; font-size:1px;"></div>
</asp:Content>