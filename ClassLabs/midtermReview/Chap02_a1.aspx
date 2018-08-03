<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chap02_a1.aspx.cs" Inherits="midtermReview.Chap02_a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Gloria+Hallelujah|Lobster|Merienda+One|Indie+Flower|Pacifico">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p style="background-color:aliceblue; color:darkblue; font-size:20px;">
			 - view state - <br /> </p>
			<div style="color:blueviolet; font-family:Delius;">
		    <asp:Button ID="Button1" runat="server" Text="Click!" OnClick="btnClick_Click" /><br />
			<asp:Label ID="lblDisplay" runat="server" Text="Here"></asp:Label>
			</div>
		<p style="background-color:aliceblue; color:darkblue; font-size:20px;">
			 SiteMap <br /> </p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathSeparator=" &gt;&gt;" RenderCurrentNodeAsLink="True" SkipLinkText="&quot;&quot;" BackColor="#FFFFCC"></asp:SiteMapPath>
    </form>
</body>
</html>
