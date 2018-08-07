<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="comment.aspx.cs" Inherits="GroupProject.comment" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html>
<div class="wrapper">
**** write comment Here ****
<hr />
<table>
<tr>name: <asp:Label ID="usernamelbl"  runat="server" Text=""></asp:Label>
	<asp:TextBox ID="usernametxt" size="20" runat="server"></asp:TextBox>
</tr>

<tr>item: <asp:TextBox ID="item" size="20" runat="server"></asp:TextBox></tr>

<tr>comment: <asp:TextBox ID="comments" size="40"  runat="server"></asp:TextBox></tr>



<tr>
&nbsp;&nbsp;<asp:Button ID="submit" Text="save" runat="server"/>
&nbsp;<asp:Button ID="view" Text="view" runat="server"/>
</tr>
</table>
</div>
</asp:Content>