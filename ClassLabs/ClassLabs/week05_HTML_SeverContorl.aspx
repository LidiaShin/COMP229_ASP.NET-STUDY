<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
	Sub check(ByVal s As Object, ByVal e As EventArgs)
		Dim i As Integer
		result.Text = "Your name is: " & name.Value & "<br />"
		result.Text += "Your email is: " & email.Value &
		"<br />"
		result.Text += "You like to eat :<br />"
		For i = 0 To snack.Items.Count - 1
			If snack.Items(i).Selected Then
				result.Text += " ♥ " &
				snack.Items(i).Text & "<br />"
			End If
		Next i
		result.Text += "You like .NET: " & fastfood.Value
	End Sub






</script>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
    <title>week05_Classlab_Using ASP.NET HTML Server Controls</title>
		<link href="week05.css" rel="stylesheet" type="text/css" />
	</head>
<body>
    <form id="form1" runat="server">
        <div>
<h3>This is ASP.NET Class week5's Lab (HTML) </h3>

<p>Name: <br />
	<input type="text" id="name" runat="server" />
</p>

<p>Email: <br />
	<input type="text" id="email" runat="server" />
</p>

<p>Which snack do you prefer?<br />
	<select id="snack" runat="server" multiple="true">
		<option>Lays</option>
		<option>Chocolate</option>
		<option>Candy</option>
		<option>Caramel</option>
	</select>
</p>

<p>Do you like fastfood?<br />
	<select id="fastfood" runat="server">
		<option>Yes</option>
		<option>No</option>
	</select>
</p>

<p>

<button id="myButton" OnServerClick="check" runat="server">CHECK</button>
	<!-- on server click -->
</p>
<p>
	<asp:Label ID="result" runat="server"></asp:Label>
</p>



        </div>
    </form>
</body>
</html>
