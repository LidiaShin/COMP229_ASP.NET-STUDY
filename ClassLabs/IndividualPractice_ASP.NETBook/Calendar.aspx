<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="IndividualPractice_ASP.NETBook.Calendar" %>

<!DOCTYPE html>
<script runat="server">
	void checkCalendar(object sender, EventArgs e)
	{
		result.Text="Your date is : " + Calendar1.SelectedDate.ToShortDateString();
	
	}


</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Practice Calendar</title>
	<link href="Practice.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="para" >

			<asp:Label ID="result" runat="server" Text="Here"></asp:Label>
			</div>
		<p></p>
			<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="checkCalendar" SelectionMode="Day" ></asp:Calendar>
		<!-- 띄어쓰기 지킬것!!!-->
        
    </form>
</body>
</html>
