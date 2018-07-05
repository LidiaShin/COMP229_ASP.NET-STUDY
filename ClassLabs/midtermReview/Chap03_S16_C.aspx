<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chap03_S16_C.aspx.cs" Inherits="midtermReview.Chap03_CtrEvt_C" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<script runat="server">

		public void Page_PreRender(Object s, EventArgs e)
		{
			messageLabel1.Text = "Step 1 : Page PreRender </br>";
			Response.Write("Page PreRender! <br>");
		}
		public void Page_Load(Object s, EventArgs e)
		{
			messageLabel2.Text = "Step 2 : Page Load </br>" + messageLabel1.Text;
			Response.Write("Page Load! <br>");
		}
		public void Page_Init(Object s, EventArgs e)
		{
			messageLabel3.Text = "Step 3: Page Init </br>" + messageLabel1.Text;
			Response.Write("Page Init! <br>");
		}
</script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Gloria+Hallelujah|Indie+Flower">
<head runat="server">
    <title>Chapter3 Control Events</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide16 : Control Events and Subroutines_C# <br /> </p>
			<asp:Label ID="messageLabel1" runat="server" Font-Names="Delius" />
			<asp:Label ID="messageLabel2" runat="server" Font-Names="Delius" />
			<asp:Label ID="messageLabel3" runat="server" Font-Names="Delius" />
			
        </div>
    </form>
</body>
</html>
