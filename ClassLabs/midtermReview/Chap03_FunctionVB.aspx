<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="Chap03_FunctionVB.aspx.cs" Inherits="midtermReview.Chap03_S29" %>
<script runat="server">

	Function myName() As String
		Return "Dodam Shin!"
	End Function


	Function MySum(x As Integer, y As Integer) As Integer
		Return x + y
	End Function

	Function MySub(a As Integer, b As Integer) As Integer
		Return a - b
	End Function


	Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
		Label1.Text = myName() + "?"
	End Sub

	Sub Check1(ByVal s As Object, ByVal e As EventArgs)
		Label2.Text = "Sum of 4 and 100 is..." + MySum(4, 100).ToString
	End Sub

	Sub Check2(ByVal s As Object, ByVal e As EventArgs)
		Label3.Text = "Sub of 100 and 4 is..." + MySub(100, 4).ToString
	End Sub



</script>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Indie+Flower">
<head runat="server">
    <title>Chapter 3 - Function</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide29 : Function1 on VB <br /> </p>
			<asp:Label id="Label1" runat="server" Font-Names="Delius" />
        </div>
            <p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide34 : Function2 on VB <br /> </p>
		    <asp:Button ID="Button1" runat="server" Text="Sum" Font-Names="Delius" BorderStyle="None" BackColor="#FFCCCC" OnClick="Check1" /> &nbsp;&nbsp;&nbsp;
		    <asp:Label ID="Label2" runat="server" Font-Names="Delius" /><br />
		    <asp:Button ID="Button2" runat="server" Text="Sub" Font-Names="Delius" BorderStyle="None" BackColor="#FFCCCC" OnClick="Check2" /> &nbsp;&nbsp;&nbsp;
		    <asp:Label ID="Label3" runat="server" Font-Names="Delius" /><br />
    </form>
</body>
</html>
