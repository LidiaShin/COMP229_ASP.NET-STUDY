<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="myPage.aspx.cs" Inherits="GroupProject.myPage" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
<!DOCTYPE html>
	

<div class="wrapper_left">
 **** My Information  ****
<hr />
<table style="width: 100%;">
<tr>
<td>Username:</td>
<td><asp:Label ID="usernamelbl" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td>Child Birthday : </td>
<td><asp:Label ID="bdaylbl" runat="server" Text=""></asp:Label></td>               
</tr>


<tr>
<td>Phone:</td>
<td>
<asp:Label ID="phonelbl" runat="server"></asp:Label> 
</td>
</tr>

<tr>
<td>Email:</td>
<td>                    
<asp:Label ID="emaillbl" runat="server"></asp:Label> 
</td>
</tr>
</table>

</div>




<div class="wrapper_right">
   My Cart
  </div>
<div style="clear:both; font-size:1px;"></div>



</asp:Content>
