<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dodam.ascx.cs" Inherits="midtermReview.dodam" %>
<script runat="server">
	public string labelText
	{
		set
		{
			label1.Text = value;
			}
	}


	public string boxtext
	{
		get
		{
			return textbox1.Text;
		}
	}

</script>


<p>
<asp:Label ID="label1" runat="server" Text="" Width="100" ForeColor="#FF99CC" Font-Names="Delius" />
<asp:TextBox ID="textbox1" runat="server" Text="" Width="200"
MaxLength="20" />
</p>