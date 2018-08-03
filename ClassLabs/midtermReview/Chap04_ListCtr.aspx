<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chap04_ListCtr.aspx.cs" Inherits="midtermReview.Chap04_AdvCtr" %>
<script runat="server">

	public void check1(Object s, EventArgs e)
	{
		result1.Text = "Selected Item.Text : " + colors.SelectedItem.Text;
		result2.Text = "Selected Item.Value : " + colors.SelectedValue;
		result3.Text = "Selected Item.Index : " + colors.SelectedIndex;
	}

	public void check2(Object s, EventArgs e)
	{
		for (int i = 0; i <= flowers.Items.Count - 1; i++)
			if (flowers.Items[i].Selected == true)
			{
				result4.Text += flowers.Items[i] + "  ";
				result5.Text += flowers.Items[i].Text + "  ";
				result6.Text += flowers.Items[i].Value + "  ";
				result7.Text += Convert.ToString(i+1) + " " ;
			}
	}

	public void check3(Object s, EventArgs e)
	{
		result8.Text = "Selected Item.Text : " + sweets.SelectedItem.Text;
		result9.Text = "Selected Item.Value : " + sweets.SelectedValue;
		result10.Text = "Selected Item.Index : " + (sweets.SelectedIndex+1).ToString();
	}

	public void check4(Object s, EventArgs e)
	{
		for (int i = 0; i <= drink.Items.Count - 1; i++)
			if (drink.Items[i].Selected)
			{
				result11.Text += drink.Items[i] + "  ";
				result12.Text += drink.Items[i].Text + "  ";
				result13.Text += drink.Items[i].Value + "  " ;
				result14.Text += Convert.ToString(i + 1) + " ";
			}

	}





</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Raleway|Montserrat">
<head runat="server">
    <title> Chapter 4 From Slide 69 </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 70 : Web Server Control DropBox (오토포스트백!)<br /> </p>

			<asp:DropDownList ID="colors" runat="server" Font-Names="raleway" AutoPostBack="True">
				
				<asp:ListItem Text ="rosegold" Value="rosegold★" />
				<asp:ListItem Text ="darkblue" Value="darkblue★" />
				<asp:ListItem Text ="bloodorange" Value="bloodorange★" />
				<asp:ListItem Text ="mintgreen" Value="mintgreen★" />
				<asp:ListItem Text ="aquablue" Value="aquablue★" />

			</asp:DropDownList>
			&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Select color" OnClick="check1" BackColor="#FFCCFF" ForeColor="#660066" BorderStyle="None" Font-Names="Raleway, cursive;" /><br />
			<asp:Label ID="result1" runat="server" Font-Names="Montserrat" ForeColor="#336600" Text="?"></asp:Label><br />
			<asp:Label ID="result2" runat="server" Font-Names="Montserrat" ForeColor="#336600" Text="?"></asp:Label><br />
			<asp:Label ID="result3" runat="server" Font-Names="Montserrat" ForeColor="#336600" Text="?"></asp:Label>
        </div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 74 : Web Server Control ListBox (멀티플 셀렉션모드)<br /> </p>
			<asp:Button ID="Button2" runat="server" Text="Select flower" OnClick="check2" BackColor="#CCFFFF" ForeColor="#006666" BorderStyle="None" Font-Names="Raleway, cursive;" /><br /><br />
			
			<asp:ListBox ID="flowers" runat="server" Font-Names="raleway" SelectionMode="Multiple">
				<asp:ListItem Text ="rose" Value="rose★" />
				<asp:ListItem Text ="jasmin" Value="jasmin★" />
				<asp:ListItem Text ="lotus" Value="lotus★" />
				<asp:ListItem Text ="violet" Value="violet★" />
				<asp:ListItem Text ="lilac" Value="lilac★" />
			</asp:ListBox> <br />
			
			Selected Item[i] :<br /><asp:Label ID="result4" runat="server" Font-Names="Montserrat" ForeColor="#000099" Text=""></asp:Label><br />
			Selected Item[i].Text :<br /><asp:Label ID="result5" runat="server" Font-Names="Montserrat" ForeColor="#000099" Text=""></asp:Label><br />
			Selected Item[i].Value:<br /><asp:Label ID="result6" runat="server" Font-Names="Montserrat" ForeColor="#000099" Text=""></asp:Label><br />
			Selected Item[i].Index:<br /><asp:Label ID="result7" runat="server" Font-Names="Montserrat" ForeColor="#000099" Text=""></asp:Label>
		</div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 77 : Web Server Control RadioButton<br /> </p>
		    <asp:Button ID="Button3" runat="server" Text="Select sweets" OnClick="check3" BackColor="#CCFF99" ForeColor="#003366" BorderStyle="None" Font-Names="Raleway, cursive;" />
			
			<asp:RadioButtonList ID="sweets" runat="server" Font-Names="raleway">
				<asp:ListItem Text ="cookie" Value="cookie★" />
				<asp:ListItem Text ="tiramisu" Value="tiramisu★" />
				<asp:ListItem Text ="chocolate" Value="chocolate★" />
				<asp:ListItem Text ="icecream" Value="icecream★" />
				<asp:ListItem Text ="brownie" Value="brownie★" />
			</asp:RadioButtonList>
			<br />
			<asp:Label ID="result8" runat="server" Font-Names="Montserrat" ForeColor="#336600" Text="?"></asp:Label><br />
			<asp:Label ID="result9" runat="server" Font-Names="Montserrat" ForeColor="#336600" Text="?"></asp:Label><br />
			<asp:Label ID="result10" runat="server" Font-Names="Montserrat" ForeColor="#336600" Text="?"></asp:Label><br />
		</div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 79 : Web Server Control CheckBoxList<br /> </p>
			 <asp:Button ID="Button4" runat="server" Text="Choose drink" BackColor="#66FFCC" ForeColor="#003366" OnClick="check4" BorderStyle="None" Font-Names="Raleway, cursive;" />
			 
			<asp:CheckBoxList ID="drink" Font-Names="raleway" runat="server" AutoPostBack="True">
				<asp:ListItem Text ="wine" Value="wine★" />
				<asp:ListItem Text ="beer" Value="beer★" />
				<asp:ListItem Text ="soju" Value="soju★" />
				<asp:ListItem Text ="vodca" Value="vodca★" />
				<asp:ListItem Text ="whisky" Value="whisky★" />
			</asp:CheckBoxList><br />
            <asp:Label ID="result11" runat="server" Font-Names="Montserrat" ForeColor="#6600FF" Text=""></asp:Label><br />
			<asp:Label ID="result12" runat="server" Font-Names="Montserrat" ForeColor="#6600FF" Text=""></asp:Label><br />
			<asp:Label ID="result13" runat="server" Font-Names="Montserrat" ForeColor="#6600FF" Text=""></asp:Label><br />
			<asp:Label ID="result14" runat="server" Font-Names="Montserrat" ForeColor="#6600FF" Text=""></asp:Label><br />
		</div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 81 : Web Server Control BulletedList<br /> </p>




		</div>

    </form>
</body>
</html>
