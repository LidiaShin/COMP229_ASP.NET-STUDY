<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week12_Rquiz1.aspx.cs" Inherits="ClassLabs.week12_Rquiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
			<Columns>
				<asp:BoundField DataField="uName" HeaderText="uName" SortExpression="uName" />
				<asp:BoundField DataField="pWord" HeaderText="pWord" SortExpression="pWord" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DSMyDBConnectionString %>" SelectCommand="SELECT * FROM [DSMyDB]"></asp:SqlDataSource>
    </form>
</body>
</html>
