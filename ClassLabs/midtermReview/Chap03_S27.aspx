<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chap03_S27.aspx.cs" Inherits="midtermReview.Chap03_S27" %>
<script runat="server">

	protected void Page_Load(object sender, EventArgs e)
	{
		string[] DodamList = new string[7];

		DodamList[0] = "Macaron";
		DodamList[1] = "Avocado";
		DodamList[2] = "Watermelon";
		DodamList[3] = "Papaya";
		DodamList[4] = "Douhua";
		DodamList[5] = "Yachhashi";
		DodamList[6] = "Soymilk";

		Label1.Text = "<span style = \"color: red\"> Favorite desert is </span>"  + DodamList[0] + " and " + DodamList[5];

	}

</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Indie+Flower">
<head runat="server">
    <title> Array on C#</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide27 : Arrays on C# <br /> </p>
			<asp:Label ID="Label1" runat="server" Font-Names="Delius" />
        </div>
    </form>
</body>
</html>
