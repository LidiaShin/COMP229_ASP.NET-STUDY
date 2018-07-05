<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="Chap03_S13_VB.aspx.cs" Inherits="midtermReview.Chap03_CtrEvt" %>

<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    Sub Page_Init(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text = "1. Page_Init <br/>"
    End Sub
    Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text += "2. Page_Load <br/>"
    End Sub
    Sub Page_PreRender(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text += "3. Page_PreRender <br/>"
    End Sub
    Sub Page_UnLoad(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text += "4. Page_UnLoad <br/>"
    End Sub
    </script>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Gloria+Hallelujah|Indie+Flower">
<head runat="server">
    <title>Chapter3 Control Events</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide13 : Control Events and Subroutines <br /> </p>
			<asp:Label ID="messageLabel" runat="server" Font-Names="Delius" />
			
			<p style="background-color:beige; color:darkgreen; font-size:16px
              Code <br />
		Sub Page_Init(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text = "1. Page_Init <br/>"
    End Sub

    Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text += "2. Page_Load <br/>"
    End Sub
    Sub Page_PreRender(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text += "3. Page_PreRender <br/>"
    End Sub
    Sub Page_UnLoad(ByVal s As Object, ByVal e As EventArgs)
        messageLabel.Text += "4. Page_UnLoad <br/>"
    End Sub </p>
        </div>
    </form>
</body>
</html>
