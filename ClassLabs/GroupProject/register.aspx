<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="register.aspx.cs" Inherits="GroupProject.register" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>

        <div class="wrapper">
			**** SignUp Here ****
			<hr />
<table style="width: 100%;">

<tr>
<td>First Name:</td>
<td><asp:TextBox ID="fName" runat="server"></asp:TextBox> </td>
</tr>
	
<tr>
<td>Last Name </td>
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
			<asp:Button ID="check" runat="server" Text="Register" OnClick="check_Click" /> <br /><br />
			<asp:Label ID="result" runat="server" Text=""></asp:Label>

			

        </div>
 

</asp:Content>

