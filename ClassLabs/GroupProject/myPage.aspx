<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="myPage.aspx.cs" Inherits="GroupProject.myPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
   
<div class="wrapper_left">

<div class="mypageHeading"> Customer Information </div>
<br />

<div class="mypageBox">
<asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
</div>

</div>

<div class="wrapper_right">

<div class="mypageHeading"> My Cart</div>
<br />

<div id="mycartBox">
<asp:Label ID="cartEmpty" runat="server" Text="Label"></asp:Label>
<br />
<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
<br />

<table style="width:90%;">
<tr>
<td>SubTotal：</td>
<td><asp:Label ID="SubTotal" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td>Tax:</td>
<td><asp:Label ID="Tax" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td>Total:</td>
<td><asp:Label ID="Total" runat="server" Text=""></asp:Label></td>
</tr>
</table>

<asp:Button ID="Pay" runat="server" OnClick="Pay_Click1" Text="CheckOut" Visible="False" CssClass="shopBtn" />
<asp:Button ID="ShoppingBTon" runat="server"  Text="Go To Shopping" Visible="True" OnClick="ShoppingBTon_Click" CssClass="shopBtn" />
         
</div>   




</div>

</asp:Content>
