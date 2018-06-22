<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenField.aspx.cs" Inherits="IndividualPractice_ASP.NETBook.HiddenField" %>

<!DOCTYPE html>
<script runat="server">

	public void CHECK(Object sender, EventArgs e)
	{
		if (HF.Value == "")
			HF.Value = "0";

		int count = int.Parse(HF.Value) + 1;
		HF.Value = count.ToString();
		LB.Text = "Click Counting : " + HF.Value;

	}



</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="Practice.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Button ID ="myBtn" runat="server" Text="Click" OnClick="CHECK" /><br />
			<asp:Label ID="LB" runat="server" Text="Click Counting : ">
				
			</asp:Label>
			<asp:HiddenField ID="HF" runat="server" />
        </div>
    </form>
</body>
</html>
