<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/finalMaster.master" CodeBehind="signupPr.aspx.cs" Inherits="finaltermReview.signupPr" %>

<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>



<div>
<table style="width: 80%;">
<tr>
<td>User Name:</td><td><asp:TextBox ID="uName" runat="server"></asp:TextBox> </td></tr>
<tr><td>Email :</td><td><asp:TextBox ID="eMail" runat="server"></asp:TextBox> 
<asp:Label ID="emailCheck" runat="server" Text="Label" BackColor="#CCCCFF" BorderStyle="None" ForeColor="#CC00CC"></asp:Label></td></tr>
	
<tr><td>Password : </td><td><asp:TextBox ID="pWord" runat="server" TextMode="Password"></asp:TextBox> </td></tr>
</table><asp:Button ID="check" runat="server" Text="SignUp" BorderStyle="None" OnClick="check_Click" /> <br /><br />
</div>

	</asp:Content>
