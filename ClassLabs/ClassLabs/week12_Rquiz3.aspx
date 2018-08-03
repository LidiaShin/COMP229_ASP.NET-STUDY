<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week12_Rquiz3.aspx.cs" Inherits="ClassLabs.week12_Rquiz3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="StyleForClassLab.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
			**** Register Page ****
			<hr />
			        <table style="width: 100%;">
            <tr>
                <td>UserName:</td>
                <td>
                    <asp:TextBox ID="uName" runat="server"></asp:TextBox> 
                </td>
            </tr>

            <tr>
                <td>PassWord:</td>
                <td>                    
                    <asp:TextBox ID="pWord" runat="server"></asp:TextBox> 
                </td>
            </tr>

          
        </table>
			<asp:Button ID="check" runat="server" Text="Register" OnClick="check_Click" /> <br /><br />
			<asp:Label ID="result" runat="server" Text=""></asp:Label>

			

        </div>
    </form>
</body>
</html>
