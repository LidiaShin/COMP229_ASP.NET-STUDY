<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="login.aspx.cs" Inherits="GroupProject.login" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>
	<link href="kids.css" rel="stylesheet" type="text/css" />
	<div class="left box">
	&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/PImage.PNG" Height="50%" Width="50%" />
		</div>

	<div class="wrapper">
    <form class="form-signin">       
     <h2>Please login</h2>
	<asp:TextBox ID="uName" runat="server" placeholder="User Name" CssClass="uname"></asp:TextBox> <br />
    <asp:TextBox ID="pWord" runat="server" placeholder="Password" CssClass="pword"></asp:TextBox> 

      <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /><br /><br />
      
    
    </form>
  </div>
	
		<asp:Label ID="result" runat="server" Text=""></asp:Label>
		<input type="hidden" id="hdn" runat="server" value="0" />


</asp:Content>

