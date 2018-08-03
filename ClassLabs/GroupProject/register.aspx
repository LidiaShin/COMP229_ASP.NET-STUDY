<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="register.aspx.cs" Inherits="GroupProject.register" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">
	<!DOCTYPE html>

        <div>
			**** Register Page ****
			<hr />
			        <table style="width: 100%;">
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="uName" runat="server"></asp:TextBox> 
                </td>
            </tr>

            <tr>
                <td>Password:</td>
                <td>                    
                    <asp:TextBox ID="pWord" runat="server"></asp:TextBox> 
                </td>
            </tr>

			<tr>
                <td>Password Confirm: </td>
                <td>
                    <asp:TextBox ID="pWordConfirm" runat="server"></asp:TextBox> 
                </td>
            </tr>

            <tr>
                <td>Child Birthday : </td>
                <td>    
					<asp:Label ID="cBirthdayDisplay" runat="server" Text=""></asp:Label>
					
					<asp:Button ID="Button1" runat="server" Text="date" OnClick="Button1_Click" />
                    
					<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
					
                </td>
            </tr>


			<tr>
                <td>Phone:</td>
                <td>
                    <asp:TextBox ID="Phone" runat="server"></asp:TextBox> 
                </td>
            </tr>

            <tr>
                <td>Email:</td>
                <td>                    
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox> 
                </td>
            </tr>
          
        </table>
			<asp:Button ID="check" runat="server" Text="Register" OnClick="check_Click" /> <br /><br />
			<asp:Label ID="result" runat="server" Text=""></asp:Label>

			

        </div>
 

</asp:Content>

