<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="Chap04_VB.aspx.cs" Inherits="midtermReview.Chap04_VB" %>
<script runat="server">

	Public Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
		Label1.Text = "Page Load Test!"

		Dim myButton As HtmlButton = New HtmlButton()
		myButton.InnerText = "PlaceHolder Test"
		PlaceHolder1.Controls.Add(myButton)
	End Sub


	Sub check1(ByVal s As Object, ByVal e As EventArgs)

		result.Text = "Your name is: " & name.Value & " <br />"
		result.Text += "Your email is: " & email.Value &
	"<br />"

		result.Text += "Your favorite city is :<br />"

		Dim i As Integer
		'For 문 용 int i 선언

		For i = 0 To city.Items.Count - 1
			'for i=0;i<아이템갯수 - 1; i++
			If city.Items(i).Selected Then
				result.Text += "♡♥" & city.Items(i).Text & "<br>"
			End If
		Next


		''result.Text += " ♥ " & city.Value & "<br>"
		'이 경우 멀티플초이스가 불가능

		result.Text += "You watched previous season -  " & pd.Value
	End Sub

	Public Sub check2(ByVal s As Object, ByVal e As EventArgs)
		Label2.Text = "Button Test (배고파 ㅠㅠ)"
	End Sub

	Public Sub check3(ByVal s As Object, ByVal e As ImageClickEventArgs)
		Label3.Text = "Image Button Test (배고파 ㅠㅠㅠㅠ) " & "Cord X is " & e.X & " , Cord Y is " & e.Y
	End Sub

	Public Sub check4(ByVal s As Object, ByVal e As EventArgs)
		Label4.Text = "Link Button Test (너무배고파 ㅠㅠㅠㅠ)"
	End Sub

	Public Sub check5(ByVal s As Object, ByVal e As System.EventArgs)
		If CheckBox1.Checked Then
			Label5.Text = "CheckBox Test (짜파게티 먹고싶다 ㅠㅠ)"
			Label5.ForeColor = System.Drawing.Color.CadetBlue
		Else
			Label5.Text = "CheckBox Test (배고파 ㅠㅠㅠㅠ)"
			Label5.ForeColor = System.Drawing.Color.Coral
		End If
	End Sub

	Public Sub check6(ByVal s As Object, ByVal e As System.EventArgs)
		If tainan.Checked Then
			Label6.Text = tainan.Text & " in Taiwan"
		ElseIf tokyo.Checked Then
			Label6.Text = "Japan"
		ElseIf toronto.Checked Then
			Label6.Text = "Canada"
		ElseIf toscana.Checked Then
			Label6.Text = "Italy"
		Else
			Label6.Text = "Korea"
		End If
	End Sub

	Public Sub check7(ByVal s As Object, ByVal e As EventArgs)
		If Panel1.Visible Then
			Panel1.Visible = False
			Button2.Text = "Show"
		Else
			Panel1.Visible = True
			Button2.Text = "Hide"
		End If
	End Sub



</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Raleway|Montserrat">
<head runat="server">
    <title> Chapter 4 </title>
</head>
<body>
    <form id="form1" runat="server">


        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 11 & 17 : HTML Server Control on VB (week05)<br /> </p>

<h1 style="font-family:Delius">Take the Survey!</h1>

<p style="font-family:'Montserrat', sans-serif;">
Name:
<input type="text" id="name" runat="server" /><br /><br />
Email:
<input type="text" id="email" runat="server" /><br /><br />

Choose your best city<br />
<select id="city" runat="server" multiple="true">
<option>Toronto</option>
<option>Kobe</option>
<option>Tainan</option>
<option>Seoul</option>
<option>Hongkong</option>
</select><br /><br />


Did you watch previous PD season?<br />
<select id="pd" runat="server">
<option>Yes</option>
<option>No</option>
</select> <br /><br />

<button id="confirm" runat="server" OnServerClick="check1" style="font-family:'Raleway', cursive; font-size:16px; background-color:lightsteelblue; border-style:none; width=150px;height:30px"  >Confirm</button> <br />
</p>

<asp:Label id="result" runat="server"  ForeColor="#FF33CC" Font-Names="Montserrat" /> 
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 27 : Page Load<br /> </p>
<asp:Label ID="Label1" runat="server" Text=""  ForeColor="#FF33CC" Font-Names="Montserrat" ></asp:Label>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 36 : Web Server Control: Button<br /> </p>
	<asp:Button ID="Button1" runat="server" Text="Button" OnClick="check2" BackColor="White" Font-Size="Large" ForeColor="Maroon" BorderStyle="Solid" Font-Names="Raleway, cursive;" /><br />
	<asp:Label ID="Label2" runat="server" Text="?" Font-Names="Montserrat" ForeColor="#FF33CC"></asp:Label>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 38 : Web Server Control: Image Button<br /> </p>
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/angry.jpg" OnClick="check3" Height="100" Width="100" /><br />
<asp:Label ID="Label3" runat="server" Text="?" Font-Names="Montserrat" ForeColor="#FF33CC"></asp:Label>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 42 : Web Server Control: Link Button<br /> </p>
	<asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Raleway" BorderStyle="None" OnClick="check4">Click Here</asp:LinkButton><br />
	<asp:Label ID="Label4" runat="server" Text="?" Font-Names="Montserrat" ForeColor="#FF33CC"></asp:Label>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 43 : Web Server Control: HyperLink<br /> </p>
	<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.naver.com" ImageUrl="~/images.jpg" ImageWidth="100">HyperLink</asp:HyperLink>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 45 : Web Server Control: CheckBox<br /> </p>
<asp:CheckBox ID="CheckBox1" runat="server" Text="체크박스 테스트" Checked="True" OnCheckedChanged="check5" AutoPostBack="True" /><br />
<asp:Label ID="Label5" runat="server" Text="?" Font-Names="Montserrat" ForeColor="#FF33CC"></asp:Label>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 47 : Web Server Control: RadioButton</p>
<span style="font-family:Raleway"> Your City:  </span><br />
	<asp:Label ID="Label6" runat="server" Text="?" Font-Names="Montserrat" ForeColor="#FF33CC"></asp:Label><br />
	<asp:RadioButton ID="tainan" GroupName="city" OnCheckedChanged="check6" Text="tainan" runat ="server" Font-Names="Raleway" AutoPostBack="True" /><br />
    <asp:RadioButton ID="tokyo" GroupName="city" OnCheckedChanged="check6" Text="tokyo" runat ="server" Font-Names="Raleway" AutoPostBack="True" /><br />
    <asp:RadioButton ID="toronto" GroupName="city" OnCheckedChanged="check6" Text="toronto" runat ="server" Font-Names="Raleway" AutoPostBack="True" /><br />
    <asp:RadioButton ID="toscana" GroupName="city" OnCheckedChanged="check6" Text="toscana" runat ="server" Font-Names="Raleway" AutoPostBack="True" /><br />
    <asp:RadioButton ID="taebak" GroupName="city" OnCheckedChanged="check6" Text="taebak" runat ="server" Font-Names="Raleway" AutoPostBack="True" /><br />
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 50 : Web Server Control: Image</p>
<asp:Image ID="Image1" runat="server" AlternateText="Cry Cry" Height="100px" ImageUrl="~/bug.jpg" Width="100px" />
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 52 : Web Server Control: Image Map</p>
<asp:ImageMap ID="ImageMap1" runat="server" Height="100px" ImageUrl="~/win.jpg" Width="100px">
	<asp:CircleHotSpot NavigateUrl="http://www.youtube.com" Radius="50" X="50" Y="50" />
	</asp:ImageMap>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 61 : Web Server Control: PlaceHolder </p>
	<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</div>

<div>
<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
Chapter4 Slide 65 : Web Server Control: Panel </p>
	<asp:Panel ID="Panel1" runat="server">
     <p style="font-family:Delius">UserName: <asp:TextBox ID="username" runat="server"></asp:TextBox><br /><br />
	  PassWord: <asp:TextBox ID="password" runat="server"></asp:TextBox></p>
	</asp:Panel>
	<asp:Button ID="Button2" runat="server" Text="Hide" BackColor="White" Font-Size="Large" ForeColor="#009933" BorderStyle="Solid" Font-Names="Raleway, cursive;" OnClick="check7"/>



</div>


    </form>
</body>
</html>
