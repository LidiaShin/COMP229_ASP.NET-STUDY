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

<tr>item: <asp:TextBox ID="itemtxt" size="20" runat="server"></asp:TextBox></tr>
<tr>comment: <asp:TextBox ID="commenttxt" size="40"  runat="server"></asp:TextBox></tr>

<tr>
&nbsp;&nbsp;<asp:Button ID="write" Text="write" runat="server" OnClick="Write"/>
&nbsp;
<asp:Label ID="result1" runat="server" Text="Label"></asp:Label>
</tr>
</table>

<asp:HiddenField ID="hdnText" runat="server" ClientIDMode="Static" Value="" /> 

<asp:ListView ID="DisplayComment" runat="server" GroupPlaceholderID="groupPlaceHolder1"
ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging">
<LayoutTemplate>

<table>

<tr>
<th style="width:50px;">Name</th>
<th style="width:60px;">Item</th>
<th style="width:100px;">Comment</th>
</tr>

<asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>


<tr>
<td colspan = "5">
<asp:DataPager ID="DataPager1" runat="server" PagedControlID="DisplayComment" PageSize="3">
 
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
<td><%# Eval("uName") %></td>
<td><%# Eval("itemName") %></td>
<td><%# Eval("itemComment") %></td>
</ItemTemplate>
</asp:ListView>	

<asp:Label ID="result2" runat="server" Text="Label"></asp:Label>
</div>
</asp:Content>