<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chap03_FunctionC.aspx.cs" Inherits="midtermReview.Chap03_S32" %>
<!DOCTYPE html>
<script runat="server">
	string getMyName()
	{
		return "Dodam SHIN!";
	}

	int AddUp(int a, int b)
	{
		return a + b;
	}

	protected void Check1(object sender, EventArgs e)
	{
		Label1.Text = "<span style=\"color:blue\"> My Name is...</span>" + getMyName();
	}

	protected void Check2(object sender, EventArgs e)
	{
		Label1.Text = "<span style=\"color:blue\"> Your Name is...</span>" + TextBox1.Text;
	}

	protected void Check3(object sender, EventArgs e)
	{
		// Label2.Text = "<span style=\"color:blue\"> Sum of 3 and 300 is....</span>" + AddUp(3, 300).ToString();
		Label2.Text = "<span style=\"color:blue\"> Sum of 3 and 300 is....</span>" + Convert.ToString(AddUp(3, 300));
	}

	protected void Check4(object sender, EventArgs e)
	{
		if (TextBox2.Text == "Dodam")
		{
			Response.Redirect("http://www.youtube.com");
		}
		else
		{
			Label3.Text = "Wrong Name";
		}

	}


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Indie+Flower">
<head runat="server">

    <title>Chapter 3 Slide32</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide32 : Function on C# <br /> </p>
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
			<asp:Button ID="Button1" runat="server" Text="My Name?" Font-Names="Delius" BorderStyle="None" BackColor="#FFCCCC" OnClick="Check1" /> &nbsp;&nbsp;&nbsp;
			<asp:Button ID="Button2" runat="server" Text="Your Name?" Font-Names="Delius" BorderStyle="None" BackColor="#CCCCFF" OnClick="Check2" /><br />
			<asp:Label ID="Label1" runat="server" Font-Names="Delius"></asp:Label>
        </div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide35 : Function on C# <br /> </p>
			<asp:Button ID="Button3" runat="server" Text="Add Up!" Font-Names="Delius" BorderStyle="None" BackColor="#CCCCFF" OnClick="Check3" /><br />
			<asp:Label ID="Label2" runat="server" Font-Names="Delius"></asp:Label>
		</div>
		<div>
            <p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide40 : Function on C# <br /> </p>
			<asp:Button ID="Button4" runat="server" Text="Your First Name??" Font-Names="Delius" BorderStyle="None" BackColor="#CCCCFF" OnClick="Check4" /><br /><br />
			<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
			<asp:Label ID="Label3" runat="server" Text="" Font-Names="Delius" ForeColor="RosyBrown"></asp:Label>
		</div>
		<div>
			 <p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide46 : Username & Password Test <br /> </p>
			 <span style="font-family:Delius"> Username: </span> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <br />
			 <span style="font-family:Delius"> Password: </span>  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> <br />
			 <asp:Button ID="Button5" runat="server" Text="CHECK" Font-Names="Delius" BorderStyle="None" BackColor="#CCCCFF" OnClick="Check5" />
			<asp:Label ID="Label4" runat="server" Text="" Font-Names="Delius" ForeColor="RosyBrown"></asp:Label>
		</div>
		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:16px;">
			 Chapter3 Slide50 : Switch <br /> </p>
			 <span style="font-family:Delius"> Number: </span> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>	
			<asp:Button ID="Button6" runat="server" Text="CHECK" Font-Names="Delius" BorderStyle="None" BackColor="#CCCCFF" OnClick="Check6" /><br />
			<asp:Label ID="Label5" runat="server" Text="" Font-Names="Delius" ForeColor="RosyBrown"></asp:Label>

		</div>


    </form>
</body>
</html>
