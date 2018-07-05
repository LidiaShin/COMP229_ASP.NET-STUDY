<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="week07_Fri_SmartBox.ascx.cs" Inherits="ClassLabs.week07_labs_webuserbox" ClassName="SmartBox" %>

<script runat="server">


	public string LabelText
	{
		set
		{
			myLabel.Text = value;
		}

	}

	public string Text
	{
		get
		{
			return myTextBox.Text;

		}


	}

</script>










<p>
<asp:Label ID="myLabel" runat="server" Text="" Width="100" />
<asp:TextBox ID="myTextBox" runat="server" Text="" Width="500" BackColor="Yellow" BorderColor="YellowGreen" BorderStyle="Ridge"
MaxLength="30" />
</p>
