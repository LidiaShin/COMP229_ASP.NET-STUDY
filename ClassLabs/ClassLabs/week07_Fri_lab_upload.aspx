<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week07_Fri_lab_upload.aspx.cs" Inherits="ClassLabs.week07_lab" %>
<%@ Register TagPrefix="sp" TagName="week07_Fri_SmartBox"
Src="week07_Fri_SmartBox.ascx" %>

<!DOCTYPE html>

<script runat="server">

	

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="StyleForClassLab.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>


			<asp:Wizard ID="Wizard1" runat="server" Height="365px" Width="408px">
				<WizardSteps>
					<asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
						<asp:Button ID="Button1" runat="server" Text="Button" />
						<asp:Button ID="Button2" runat="server" Text="Button" />
					</asp:WizardStep>
					<asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2"></asp:WizardStep>
					<asp:WizardStep runat="server" Title="Step 3">
					</asp:WizardStep>
					<asp:WizardStep runat="server" Title="Step 4">
					</asp:WizardStep>
				</WizardSteps>
			</asp:Wizard>
			<hr />


    <div>
         <h3> File Upload:</h3>
         <br />
         <asp:FileUpload ID="FileUpload1" runat="server" />
         <br /><br />
         <asp:Button ID="btnsave" runat="server" onclick="CHECK"  Text="Save" style="width:85px" />
         <br /><br />
         <asp:Label ID="lblmessage" runat="server" />
      </div>
         

<hr />

<a href="/" style="background-color: #ff9; color: #00f;">
Home
</a>



<sp:week07_Fri_SmartBox ID="nameSb" runat="server"
LabelText="Name:" />
<sp:week07_Fri_SmartBox ID="addressSb" runat="server"
LabelText="Address:" />
<sp:week07_Fri_SmartBox ID="countrySb" runat="server"
LabelText="Country:" />
<sp:week07_Fri_SmartBox ID="phoneSb" runat="server"
LabelText="Phone:" />
</div>




    </form>
</body>
</html>
