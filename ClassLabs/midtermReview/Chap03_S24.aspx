<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="Chap03_S24.aspx.cs" Inherits="midtermReview.Chap03_S24" %>
<!DOCTYPE html>
<script runat="server">

	Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
		Dim drinkList(4) As String
		drinkList(0) = "Water"
		drinkList(1) = "Juice"
		drinkList(2) = "Soda"
		drinkList(3) = "Milk"
		drinkLabel.Text = drinkList(1)

		Dim FruitList(8) As String
		FruitList(0) = "Apple"
		FruitList(1) = "Mango"
		FruitList(2) = "Grape"
		FruitList(3) = "Papaya"
		FruitList(4) = "Melon"
		FruitList(5) = "Orange"
		FruitList(6) = "Blueberry"
		FruitList(7) = "Cherry"
		Fruit.Text = FruitList(1) + " and " + FruitList(2)

	End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Gloria+Hallelujah|Indie+Flower">
<head runat="server">
    <title>Arrays</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide24 : Arrays on VB <br /> </p>
			<asp:Label ID="drinkLabel" runat="server" Font-Names="Indie Flower" /><br />
			<asp:Label ID="Fruit" runat="server" Font-Names="Indie Flower" Font-Bold="True" ForeColor="#9933FF" />

        </div>
    </form>
</body>
</html>
