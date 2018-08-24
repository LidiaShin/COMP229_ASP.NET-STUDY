<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="comment.aspx.cs" Inherits="GroupProject.comment" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html>
<div class="wrapper">
<div id="commentHeading"> Please leave feedback & review here</div>

<div id="commentArea">
<asp:Label ID="usernamelbl"  runat="server" Text=""></asp:Label>&nbsp;&nbsp;
<asp:DropDownList ID="itemList" runat="server" Width="100px"> </asp:DropDownList>
<asp:TextBox ID="commenttxt" Width="700px"  runat="server"></asp:TextBox>

<asp:DropDownList ID="grade" Width="100px" runat="server" BackColor="#FFFFCC"></asp:DropDownList>
&nbsp;&nbsp;

<asp:Button ID="writeBtn" Text="write" runat="server" OnClick="Write"/>
&nbsp;
<asp:Label ID="result1" runat="server" Text=""></asp:Label>
<asp:Label ID="nonLoginMsg" runat="server" Text="Please log in to write feedback"></asp:Label>

</div>





<asp:HiddenField ID="hdnText" runat="server" ClientIDMode="Static" Value="" /> 

<asp:ListView ID="DisplayComment" runat="server" GroupPlaceholderID="groupPlaceHolder1"
ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging">
<LayoutTemplate>

<table id="commentTable">

<tr id="commentListGroup">
<th style="width:50px;">Name</th>
<th style="width:50px;">Item</th>
<th style="width:400px;">Comment</th>
<th style="width:100px;">Rating</th>
</tr>

<asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

<tr>
<td colspan = "4" style="background-color:#d8b2d8;">
<asp:DataPager ID="DataPager1" runat="server" PagedControlID="DisplayComment" PageSize="8">
 
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
<td><%# Eval("FName") %></td>
<td style="text-align:left;"><%# Eval("PName") %></td>
<td style="text-align:left;"><%# Eval("PCmt") %></td>
<td style="text-align:center;"><%# Eval("grade") %></td>
</ItemTemplate>
</asp:ListView>	

<asp:Label ID="test" runat="server" Text=""></asp:Label>
</div>
</asp:Content>