<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="week07_lab.aspx.cs" Inherits="ClassLabs.week07_lab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        </div>
    </form>
</body>
</html>
