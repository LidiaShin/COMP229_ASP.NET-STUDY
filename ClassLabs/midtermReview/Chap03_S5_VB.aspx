<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="Chap03_S5_VB.aspx.cs" Inherits="midtermReview.Chap03_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<script runat="server">
Public Sub Check1(ByVal s As Object,ByVal e As EventArgs)
	result.Text = "Test VB"
	End Sub
</script>




<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Gloria+Hallelujah|Indie+Flower">
<head runat="server">

<title>Chapter 3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide5 : Click the Button <br /> </p>
<asp:Button ID="button" runat="server" OnClick="check1" Text="Click Me!"  Font-Names="Delius" BackColor="#FFCCCC" BorderStyle="None" />
<asp:Label ID="result" runat="server" Font-Names="Indie Flower" />

        </div>
		
    </form>
</body>
</html>
