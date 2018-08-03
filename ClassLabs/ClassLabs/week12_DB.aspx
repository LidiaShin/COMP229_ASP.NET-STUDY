<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week12_DB.aspx.cs" Inherits="ClassLabs.week12_DB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:BoundField DataField="infoID" HeaderText="infoID" SortExpression="infoID" />
					<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
					<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
					<asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
					<asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:week12DBConnectionString %>" SelectCommand="SELECT * FROM [tblInfo2]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
