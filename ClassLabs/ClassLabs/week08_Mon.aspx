<%@ Page Title="" Language="C#" MasterPageFile="~/week08_Mon_FrontPage.Master" AutoEventWireup="true" CodeBehind="week08_Mon.aspx.cs" Inherits="ClassLabs.week08_Mon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
	
	
	<link href="StyleForClassLab.css" rel="stylesheet" type="text/css" />
	
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<p class="pageinfo">My pick is Cheayeon Lee (Please watch Produce 48, Friday 11:00 PM MNET)	</p>
	
	<hr />

	<div>
<p class="title">
Please select a product:</p>
    <p>
<asp:DropDownList ID="productsList" CssClass="dropdownmenu"
runat="server">
<asp:ListItem Text="Cheayeon" Selected="true" />
<asp:ListItem Text="Eunbee" />
<asp:ListItem Text="Noe" />
<asp:ListItem Text="Doah" />
</asp:DropDownList>
</p>
<p>
<asp:TextBox ID="quantityTextBox" CssClass="textbox"
    runat="server" />
</p>
<p>
<asp:Button ID="addToCartButton" CssClass="button"
Text="Add To Cart" runat="server" />
</p>
</div>

</asp:Content>
