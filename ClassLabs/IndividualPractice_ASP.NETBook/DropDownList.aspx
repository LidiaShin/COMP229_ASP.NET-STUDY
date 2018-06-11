<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownList.aspx.cs" Inherits="IndividualPractice_ASP.NETBook.DropDownList" %>

<!DOCTYPE html>
<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			List <string> fruitList = new List<string>();
			fruitList.Add("Kiwi");
			fruitList.Add("Pineapple");
			fruitList.Add("Lichi");
			fruitList.Add("Mango");
			DropDownList1.DataSource = fruitList;
			DropDownList1.DataBind();
		}

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		string index = "";
		string text = "";
		string value = "";
		index += "You chose the index :<span id=\"colored\">  " + DropDownList1.SelectedIndex + "</span><br>";
		text += "You chose the text : <span id=\"colored\"> " + DropDownList1.SelectedItem.Text + "</span><br>";
		value += "You chose the value :<span id=\"colored\"> " + DropDownList1.SelectedItem.Value + "</span><br>";
		result.Text = index + text + value;
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
			<h3>DropDownList Practice</h3>
			<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
			<asp:Button ID="Button" runat="server" Text="Button" OnClick="Button1_Click" /> <hr />
			<asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
