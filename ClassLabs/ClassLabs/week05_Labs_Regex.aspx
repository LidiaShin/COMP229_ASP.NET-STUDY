<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="week05_Labs_Regex.aspx.cs" Inherits="ClassLabs.week05_Labs_Regex" %>

<!DOCTYPE html>
<script language="C#" runat="server">

	void Click(object o, EventArgs e)
	{

		string input = first.Text;



		if (Regex.IsMatch(input,"^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$"))
		{
			result1.Text = "correct";
		}

		else
		{
			result1.Text = "incorrect";
		}

	}

	</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="week05.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<span id="date"> 4 June 2018 </span><hr />
			
			<h3> Regex Email Practice   </h3>
			   ★ first Method <br />
			Email : <asp:TextBox ID="first" runat="server"></asp:TextBox>
			<input type="submit" runat="server" OnServerClick="Click" />
			<asp:Label ID="result1" runat="server"></asp:Label><br />

			<p></p>
			 ★ second Method <br />
			Email: <asp:TextBox ID="second" runat="server" ValidationGroup="second"></asp:TextBox>
			<asp:Button ID="Button1" runat="server" Text="secondCheck" ValidationGroup="second" OnClick="Button1_Click" />
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong" ControlToValidate="second" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="second"></asp:RegularExpressionValidator>

        </div>
    </form>
</body>
</html>
