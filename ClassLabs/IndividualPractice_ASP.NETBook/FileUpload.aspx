<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="IndividualPractice_ASP.NETBook.FileUpload" %>

<!DOCTYPE html>
<script runat="server">
	void CHECK(object sender, EventArgs e)
	{
		if (upload.HasFile)
		{
			upload.SaveAs("C:\\Users\\susur\\OneDrive - Centennial College\\2018_03\\ASP.NET\\WebApplicationDevelopment_ASPNET\\uploadedFiles\\" + upload.FileName);
			result.Text = "File Name: <span id=\"colored\"> " + upload.FileName +
				"</span> <br> File Type: <span id=\"colored\">" + upload.PostedFile.ContentType +
				"</span> <br> File Size: <span id=\"colored\">" + upload.PostedFile.ContentLength + "</span> (byte)";
		}
		else
		{
			result.Text = "No file uploaded";
		}

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
			<asp:FileUpload ID="upload" runat="server" BorderStyle="Solid" /><br />
			<asp:Button ID="Button" runat="server" Text="Upload!" OnClick="CHECK" /><hr />
			<asp:Label ID="result" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
