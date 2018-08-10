<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="search.aspx.cs" Inherits="GroupProject.search" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">


<div class="wrapper_left">
   
<div id="searchHeading"> Search Item Here 
</div><br />

<div id="searchBox">
Age(Year)
<asp:DropDownList ID="ddlAge" runat="server">
                <asp:ListItem Value="0">0-2</asp:ListItem>
                <asp:ListItem Value="3">3-4</asp:ListItem>
                <asp:ListItem Value="5">5-8</asp:ListItem>
</asp:DropDownList>
<br /><br />
Gender
<asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem>Boy</asp:ListItem>
                <asp:ListItem>Girl</asp:ListItem>
</asp:DropDownList>
<br />    
	
<asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" BorderStyle="None" CssClass="searchBtn" />
<br />
</div>

</div>


<div class="wrapper_right">
   
<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
       
</div>
       

	



</asp:Content>