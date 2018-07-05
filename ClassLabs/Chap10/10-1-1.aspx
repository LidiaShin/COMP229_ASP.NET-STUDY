<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-1-1.aspx.cs" Inherits="Chap10._10_1_1" %>
<%@ Register src="TopMenu.ascx" tagname="TopMenu" tagprefix="uc1" %>

<!DOCTYPE html>
<script runat="server">



</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<uc1:TopMenu ID="TopMenu1" runat="server" />
			<br />
			This is Homepage</div>
    </form>
</body>
</html>
