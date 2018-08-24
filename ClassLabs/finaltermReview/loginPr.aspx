<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/finalMaster.master"  CodeBehind="loginPr.aspx.cs" Inherits="finaltermReview.loginPr" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
<!DOCTYPE html>


<div runat="server" id="logintable" style ="width: 80%;">


Email : <asp:TextBox ID="eMail" runat="server"></asp:TextBox> <br /><br />

	
Password :<asp:TextBox ID="pWord" runat="server" TextMode="Password"></asp:TextBox>
<br />
<asp:Button ID="check" runat="server" Text="SignIn" BorderStyle="None" OnClick="check_Click" /> <br /><br />
</div>
	
	
<input type="hidden" id="hdn" runat="server" value="0" />
<asp:Label ID="sessionCheck" runat="server" Text="please log in"></asp:Label>	
</asp:Content>

