<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="register.aspx.cs" Inherits="GroupProject.register" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>

<div class="wrapper">
<div id="signupHeading"> - SignUp Here - 
</div><br />

<div id="signupBox">
<table style="width: 80%;">

<tr>
<td>First Name:</td>
<td><asp:TextBox ID="fName" runat="server"></asp:TextBox> </td>
</tr>
	
<tr>
<td>Last Name: </td>
<td><asp:TextBox ID="lName" runat="server"></asp:TextBox> </td>
</tr>


<tr>
<td>Email </td>
<td><asp:TextBox ID="eMail" runat="server"></asp:TextBox> </td>
</tr>
			
<tr>
<td>Password </td>
<td><asp:TextBox ID="pWord" runat="server"></asp:TextBox> </td>
</tr>
           
          
        </table>
			<asp:Button ID="check" runat="server" Text="SignUp" OnClick="check_Click" CssClass="signupBtn" BorderStyle="None" /> <br /><br />
			<asp:Label ID="result" runat="server" Text=""></asp:Label>
</div>
			

        </div>
 

</asp:Content>

