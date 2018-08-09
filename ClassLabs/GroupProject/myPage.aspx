<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="myPage.aspx.cs" Inherits="GroupProject.myPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" runat="server">
    <link href="myAccount.css" rel="stylesheet" type="text/css" />
 
            <p>
                  <asp:Label ID="Label2" runat="server" Text="Customer Information:"></asp:Label>
                <br />
                <br />
                 <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Kids Information:"></asp:Label>
                <br />
                <br />
                <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
            </p>

    <p>
        <asp:Label ID="Label4" runat="server" Text="Shopping cart:"></asp:Label>
         <br />
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <table style="width:100%;">
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
        <asp:Button ID="Pay" runat="server" OnClick="Pay_Click1" Text="Pay" Visible="False"/>
        <asp:Button ID="ShoppingBTon" runat="server"  Text="Go To Shopping" Visible="True" OnClick="ShoppingBTon_Click"/>
         
         </p>


</asp:Content>
