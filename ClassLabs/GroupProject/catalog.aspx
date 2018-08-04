<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="catalog.aspx.cs" Inherits="GroupProject.catalog" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>
	

<div class="wrapper">
   

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
            <th>
                Name
            </th>
            <th>
                Price
            </th>
           
        </tr>
        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
        <tr>
            <td colspan = "3">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="10">
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
    <td>
        <%# Eval("ProductName") %>
    </td>
    <td>
        <%# Eval("Retail") %>
    </td>
   
</ItemTemplate>
</asp:ListView>















	
</div>
</asp:Content>