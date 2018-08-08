<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="catalog.aspx.cs" Inherits="GroupProject.catalog" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>
	
<div class="wrapper_left">
Details


<div class="wrapper_inside_picture">
<asp:Image ID="productPic" runat="server" Height="80px" Width="80px" BorderStyle="None"  Style="border:0px;" />
</div>

<div class="wrapper_inside_detail">
<asp:Label ID="detailView" runat="server" Text="Label"></asp:Label>
</div>

</div>

<div class="wrapper_right">
   

<asp:LinkButton ID="default" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="All" OnClick="ENameLinkBtn_Click" CommandArgument="default"></asp:LinkButton>  
<asp:LinkButton ID="stroller" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="Stroller" OnClick="ENameLinkBtn_Click" CommandArgument="stroller"></asp:LinkButton>  
<asp:LinkButton ID="cloth" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="Cloth" OnClick="ENameLinkBtn_Click" CommandArgument="cloth"></asp:LinkButton>  
<asp:LinkButton ID="food" CssClass="linkCat" runat="server" ClientIDMode="Static" Text="Food" OnClick="ENameLinkBtn_Click" CommandArgument="food"></asp:LinkButton>  




<asp:HiddenField ID="hdnText" runat="server" ClientIDMode="Static" Value="" /> 


<asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceHolder1"
ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging">
<LayoutTemplate>




    <table cellpadding="0" cellspacing="0">
        <tr>
            <th style="width:100px;">
                Name
            </th>

            <th style="width:100px;">
                Price
            </th>

			<th style="width:100px;">
                Detail
            </th>

			 <th style="width:100px;">
                Shopping
            </th>

			 
           
        </tr>
<asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

<tr>
<td colspan = "5">
<asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="5">
<Fields>
<asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                            ShowNextPageButton="false" />
<asp:NumericPagerField ButtonType="Link" />
<asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton = "false" />
</Fields>
</asp:DataPager>

</td>
</tr>
</table>
</LayoutTemplate>



<GroupTemplate>
<tr>
<asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
</tr>
</GroupTemplate>

<ItemTemplate>
<td><%# Eval("ProductName") %></td>
<td><%# Eval("Retail") %></td>
<td><asp:Button ID="Detail" runat="server" Text="See Details" CssClass="button" CommandArgument='<%# Eval("ProductID") %>' OnClick ="SeeDetail" /></td>
<td><asp:LinkButton ID="AddToCart" runat="server" Text="Add to Cart" Font-Underline="false" CssClass="button" CommandArgument='<%# Eval("ProductID") %>' OnClick ="AddToCart" /></td>
</ItemTemplate>
</asp:ListView>	
<asp:Label ID="result" runat="server" Text="Label"></asp:Label>
</div>
<div style="clear:both; font-size:1px;"></div>
</asp:Content>