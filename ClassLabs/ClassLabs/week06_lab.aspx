<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week06_lab.aspx.cs" Inherits="ClassLabs.week06_lab" %>

<!DOCTYPE html>
<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
		Label1.Text = "This is week 06!";
	}


	protected void CHECK(object sender, EventArgs e)
	{
		hidden.Value = hiddentest.Text;
		Response.Write("Your hidden field Value is " + hidden.Value);

	}

	protected void Dodam(object sender, ImageClickEventArgs e)
	{
		Label2.Text = "This is Dodam in March" + "위치" + e.X + " " + e.Y;

	}

	protected void LinkButton(object sender, EventArgs e)
	{
		Label3.Text = "LINK BUTTON";

	}


	protected void ChekBoxChange(object sender, System.EventArgs e)
	{

		if (CheckBox1.Checked == true)
		{
			Label4.Text = "WOW! You are a member of an asp.net user group.";
			Label4.ForeColor = System.Drawing.Color.Green;
			Label4.BorderColor = System.Drawing.Color.Blue;
			
			
		}
		else
		{
			Label4.Text = "You are not a member of any asp.net user group.";
			Label4.ForeColor = System.Drawing.Color.Crimson;
		}

	}


	protected void RadioChange(object sender, System.EventArgs e) {

        if (Toronto.Checked == true) {
            Label5.Text = "Canada";
        }
        else if  (Tokyo.Checked == true){
            Label5.Text = "Japan";
        }
       else if  (Taipei.Checked == true){
            Label5.Text = "Taiwan";
        }
        else if  (Toscana.Checked == true){
            Label5.Text = "Italy";
        }
    }

    protected void PracticeRadio(object sender,System.EventArgs e) {
        if (RadioButton1.Checked == true)
        {
            Label6.Text = "Your selected item is : " +
                RadioButton1.Text;
        }
        else {
            Label6.Text = "Your selected item is : " +
                RadioButton2.Text;
        }
    }







</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><hr />
			Name : <asp:TextBox ID="username" TextMode="SingleLine" Column="30" runat="server"></asp:TextBox>
			<p></p>
			Password: <asp:TextBox ID="password" TextMode="Password"  runat="server"></asp:TextBox>
			<p></p>
			Comment: <asp:TextBox ID="comment" TextMode="MultiLine" runat="server" Columns="30" Rows="10"></asp:TextBox> <hr />
<p>
			<asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
			What you want to hide : <asp:TextBox ID="hiddentest" runat="server"></asp:TextBox>
			<asp:Button ID="Button1" runat="server" OnClick="CHECK" Text="Hide" />
			<asp:HiddenField ID="hidden" runat="server" /> <hr />
</p>


			<p>

				<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/TTC_mar2018.JPG" OnClick="Dodam" Width="100px" Height="100px" /><br />
				<asp:Label ID="Label2" runat="server" Text="누구세요?"></asp:Label><hr />


			</p>

			<asp:LinkButton ID="LinkBtn" runat="server" Text="Click Here" OnClick="LinkButton">Click</asp:LinkButton>	<br />
			<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
			<hr />

			<p>


	 <asp:HyperLink id="myLink" NavigateUrl="https://my.centennialcollege.ca/cp/home/displaylogin"
     runat="server" ImageUrl="~/profile_wanwan_angry.jpg" Width="20px" Height="20px">Our School</asp:HyperLink> <hr />
			</p>

<asp:Label
            ID="Label4"
            runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            ForeColor="Crimson"
            Font-Italic="true"
            Font-Size="Medium"
            Text=""
            />
			<br />
        <asp:CheckBox 
            ID="CheckBox1" 
            runat="server" 
            Text="ASP.NET user group member" 
            OnCheckedChanged="ChekBoxChange" 
            AutoPostBack="true"
            Font-Names="Serif"
            Font-Size="Medium"
            />
<hr />

 <p>
             <asp:Label
            ID="Label5"
            runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            ForeColor="Crimson"
            Font-Italic="true"
            Font-Size="X-Large"
            Width="350"
            />
<br />

<asp:RadioButton id="Toronto" OnCheckedChanged="RadioChange" GroupName="City" AutoPostBack="true" Text="Toronto"
runat="server" /><br />
<asp:RadioButton id="Tokyo" OnCheckedChanged="RadioChange" GroupName="City" AutoPostBack="true" Text="Tokyo"
runat="server" /><br />
<asp:RadioButton id="Taipei" OnCheckedChanged="RadioChange" GroupName="City" AutoPostBack="true" Text="Taipei"
runat="server" /><br />
<asp:RadioButton id="Toscana" OnCheckedChanged="RadioChange" GroupName="City" AutoPostBack="true" Text="Toscana"
runat="server" />
</p>
<hr />

			<h2 style="color:MidnightBlue; font-style:italic;">      
                How to use RadioButton control
            </h2>      
           
            <asp:Label
                 ID="Label6"
                 runat="server"
                 Font-Bold="true"
                 Font-Names="Comic Sans MS"
                 ForeColor="Crimson"
                 Font-Italic="true"
                 Font-Size="X-Large"
                />
            <br /><br />
            <asp:Label
                 ID="Label7"
                 runat="server"
                 Text="Choose an item..."
                 Font-Bold="true"
                 Font-Names="Book Antiqua"
                 Font-Size="Larger"
                 Font-Underline="true"
                />
            <br />
            <asp:RadioButton 
                ID="RadioButton1" 
                runat="server" 
                Text="ASP.NET" 
                GroupName="Software" 
                AutoPostBack="true" 
                OnCheckedChanged="PracticeRadio"
                Font-Bold="true"
                Font-Names="Courier New"
                Font-Size="XX-Large"
                ForeColor="Navy"
                />
            <asp:RadioButton 
                ID="RadioButton2" 
                runat="server" 
                Text="ColdFusion"
                GroupName="Software" 
                AutoPostBack="true" 
                OnCheckedChanged="PracticeRadio"
                Font-Bold="true"
                Font-Names="Courier New"
                Font-Size="XX-Large"
                ForeColor="Navy"
                />
			<hr />


			<asp:ImageMap ID="ImageMap1" runat="server" Height="198px" ImageUrl="~/profile_wanwan.jpg">
				<asp:CircleHotSpot Radius="20" X="10" Y="10" NavigateUrl="https://www.google.com" />
			</asp:ImageMap>


			<hr />






        </div>




    </form>
</body>
</html>
