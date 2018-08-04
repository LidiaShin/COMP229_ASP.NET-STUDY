<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="login.aspx.cs" Inherits="GroupProject.login"  Theme="kidsThme"%>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	
	
<!DOCTYPE html>


 <div class="wrapper_left">
    <form class="form-signin">       
      <h5 class="form-signin-heading">Please login</h5>
<asp:TextBox ID="uName" runat="server" placeholder="Username" required="" autofocus="" CssClass="form-control" SkinID="usernamebox"></asp:TextBox> 
<asp:TextBox ID="pWord" runat="server" placeholder="Password" required="" CssClass="form-control" TextMode="Password" SkinID="passwordbox"></asp:TextBox> 
<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-lg btn-primary btn-block" />

    </form>
  </div>

<asp:Label ID="result" runat="server" Text=""></asp:Label>
<input type="hidden" id="hdn" runat="server" value="0" />


<div class="wrapper_right">
   
  </div>
<div style="clear:both; font-size:1px;"></div>

<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<input type="hidden" id="Hidden1" runat="server" value="0" />


</asp:Content>

