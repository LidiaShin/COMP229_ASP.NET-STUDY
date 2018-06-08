<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ClassLabs._default" %>

<!DOCTYPE html>
<script language="C#" runat="server">


	void Page_Load()
	{
		hello.Text = "Welcome!!!";
	} // When page load, the welcome text will appear automatically
	void Click(object o, EventArgs e)
	{
	  // when button with ID Click is clicked, the event below will happen

		result.Text = "Welcome! " + name.Value + "<br>";
		result.Text += "Your email is " + email.Value + "<br>";
		result.Text += "Your favorite sweet is <br>" ;
		// label with ID
		for(int i=0;i<=dessert.Items.Count-1;i++){
			if (dessert.Items[i].Selected)
			{
				result.Text += " ★ " + dessert.Items[i].Text + "<br>";
			}
		}


		result.Text += "You like studying coding" + coding.Value;
	}

	</script>





<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WEEK05 WebPage Practice</title>
	<link href="week05.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="banner">
			<a runat="server" href="https://codepen.io/dashboard/">Visit My Gallery</a> 

			<h3>This is ASP.NET Class week5's Lab</h3>


		   <asp:Label ID="hello" runat="server"></asp:Label>
			Name: <br />
			<input type="text" id="name" runat="server" /><hr />
			Email: <br />
			<input type="text" id="email" runat="server" /> <hr />
			
				What kind of dessert do you like most? <br />
				<select id="dessert" runat="server" multiple="true">
					<option>Tart</option>
					<option>Eclair</option>
					<option>Macaroon</option>
					<option>Yuebing</option>
					<option>Apple Pie</option>
					<option>Cup Cake</option>
				</select>
			<p>
			    Do you think coding is difficult so far? <br />
			<select id="coding" runat="server">
				<option> Yes!!!!</option>
				<option> No!!!!</option>
			</select>
				</p>
			<p>
				<button id="confirm" OnServerClick="Click" runat="server">
					Confirm!!
				</button>
			</p>

			<p>
				<asp:Label ID="result" runat="server"></asp:Label>
			</p>
        </div>
    </form>
</body>
</html>
