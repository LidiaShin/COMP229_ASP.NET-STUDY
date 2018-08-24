<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="catalog.aspx.cs" Inherits="GroupProject.catalog" Theme="KidsTheme" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>
	
<div class="wrapper_left">



<div class="wrapper_inside_picture">

<asp:Image ID="productPic" runat="server" BorderStyle="None" CssClass="itemPicture" Width="240px" Height="240px" />
</div>

<div class="wrapper_inside_detail">
<asp:Label ID="detailView" runat="server" Text=""></asp:Label>
</div>

</div>

<div class="wrapper_right" style="background-color:white;">
   

<asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceHolder1"
ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging">
<LayoutTemplate>
	

<div id="itemTable">
<table style="margin:auto;">

<tr id="itemListGroup">
<th style="width:400px">Item</th>
<th style="width:70px">Price</th>
<th style="width:70px">Detail</th>
<th style="width:20px">Cart </th>
<th style="width:20px">Rating(avg) </th>
</tr>

	
<asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

<tr><td colspan = "5" style="background-color:#fcf2f6">
<asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="8">
	
<Fields>
<asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                            ShowNextPageButton="false" />
<asp:NumericPagerField ButtonType="Link" />
<asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton = "false" />
</Fields>

</asp:DataPager>
</td></tr>
</table>
</div>
</LayoutTemplate>



<GroupTemplate>
<tr>
<asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
</tr>
</GroupTemplate>

<ItemTemplate>
<td style="text-align:left;"><%# Eval("ProductName") %></td>
<td><%# Eval("Retail") %></td>
<td><asp:Button ID="Detail" runat="server" Text="SEE" CssClass="itemDetailBtn" CommandArgument='<%# Eval("ProductID") %>' OnClick ="SeeDetail"  BorderStyle="None" /></td>
<td><asp:Button ID="AddToCart" runat="server" Text="ADD" Font-Underline="false" CssClass="itemAddBtn" CommandArgument='<%# Eval("ProductID") %>' BorderStyle="None" OnClick ="AddToCart" /></td>
<td> <asp:Label ID="AVG" runat="server" CommandArgument='<%# Eval("ProductName") %>'></asp:Label></td>

</ItemTemplate>
</asp:ListView>	
<br /><br />
<div id="linkCats">
Tag : <asp:LinkButton ID="default" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="All" OnClick="ENameLinkBtn_Click" CommandArgument="Default"></asp:LinkButton>  
<asp:LinkButton ID="stroller" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="toys" OnClick="ENameLinkBtn_Click" CommandArgument="toy"></asp:LinkButton>  
<asp:LinkButton ID="cloth" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="cloth" OnClick="ENameLinkBtn_Click" CommandArgument="cloth"></asp:LinkButton>  
<asp:LinkButton ID="toy" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="stroller" OnClick="ENameLinkBtn_Click" CommandArgument="stroller"></asp:LinkButton>  
<asp:HiddenField ID="hdnText" runat="server" ClientIDMode="Static" Value="" /> 
</div>

</div>
<div style="clear:both; font-size:1px;"></div>

	<asp:Label ID="test1" runat="server" Text=""></asp:Label>
	<asp:Label ID="test2" runat="server" Text=""></asp:Label>

</asp:Content>