<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chap04_AdvCtr.aspx.cs" Inherits="midtermReview.Chap04_AdvCtr1" %>

<%@ Register TagPrefix="dd" TagName="dodam"
Src="dodam.ascx" %>



<script runat="server">

	protected void check1(object sender, EventArgs e)
	{
		result1.Text = "";
		foreach (DateTime d in Calendar1.SelectedDates)
		{
			result1.Text += d.ToString("D") + "<br>";
		}
		result2.Text = Calendar1.SelectedDate.ToString() + "<br>";
	}

	protected void check2(object sender, EventArgs e)
	{
		if (MultiView1.ActiveViewIndex == 0)
		{
			MultiView1.ActiveViewIndex = 1;
		}
		else
		{
			MultiView1.ActiveViewIndex = 0;
		}
	}

	protected void check3(object sender, WizardNavigationEventArgs e)
	{
		Label1.Text = "username: " + TextBox1.Text + "<br>";
		Label2.Text = "password: " + TextBox2.Text + "<br>";
		Label3.Text = colors.SelectedItem.Text + "<br>";
		Label4.Text = colors.SelectedValue + "<br>";
	}

	protected void check4(object sender, EventArgs e)
	{

		StringBuilder sb = new StringBuilder();

		if (FileUpload1.HasFile)
		{
			try
			{
				sb.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);

				//saving the file
				FileUpload1.SaveAs(Server.MapPath("~/upup/")+ FileUpload1.FileName);

				//Showing the file information

				sb.AppendFormat("<br/> Save As: {0}",  FileUpload1.PostedFile.FileName);
				sb.AppendFormat("<br/> File type: {0}",    FileUpload1.PostedFile.ContentType);
				sb.AppendFormat("<br/> File length: {0}",  FileUpload1.PostedFile.ContentLength);
				sb.AppendFormat("<br/> File name: {0}",  FileUpload1.PostedFile.FileName);

				upresult.Text = sb.ToString();
				// 이거 빠져있었음
			}catch (Exception ex)
			{
				sb.Append("<br/> Error <br/>");
				sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
			}
		}
		else
		{
			upresult.Text = sb.ToString();
		}
	}


	protected void check5(object sender, EventArgs e)
	{

		
//nameSb.LabelText = "Name:";
//addressSb.LabelText = "Address:";



	}



</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Delius|Raleway|Montserrat">
<head runat="server">
    <title>Chapter 4 Advanced Controls</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 84 : Advanced Control Calandar (셀렉션모드 주의)<br /> </p>
			<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="check1">
				<DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
				<NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
				<OtherMonthDayStyle ForeColor="#999999" />
				<SelectedDayStyle BackColor="#333399" ForeColor="White" />
				<TitleStyle BackColor="White" BorderColor="#003399" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
				<TodayDayStyle BackColor="#CCCCCC" />
			</asp:Calendar>
			<asp:Label ID="result1" runat="server"  Font-Names="Montserrat" ForeColor="#FF33CC"></asp:Label><br />
			<asp:Label ID="result2" runat="server"  Font-Names="Montserrat" ForeColor="#000099"></asp:Label><br />
        </div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 96 : Advanced Control AdRotator (xml 파일만들기)<br /> </p>

			<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Chap04_AR.xml" Height="100px" Width="100px" />
			<!-- impression: 광고의 표시 빈도를 나타내는 상대적인 숫자값 (가중치)-->
		</div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 107 : Advanced Control TreeView (sitemap 파일 이름은 Web.sitemap 으로 지정해주면 자동으로 연결된다 (509p 참조)<br /> </p>
			<asp:SiteMapDataSource ID="treeviews" runat="server" />
			<asp:TreeView ID="TreeView1" runat="server" DataSourceID="treeviews" Font-Names="raleway"></asp:TreeView>
		</div>

		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 107 : Advanced Control SiteMapPath (하위 페이지에 표시한다 - chap01 등)<br /> </p>	
			<asp:SiteMapPath ID="SiteMapPath1" runat="server" PathSeparator=" &gt;&gt;" RenderCurrentNodeAsLink="True" SkipLinkText="&quot;&quot;" BackColor="#FFFFCC"></asp:SiteMapPath>
		</div>


		<div>
           <p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 122 : Advanced Control MultiView<br /> </p>	
			<asp:Button ID="Button2" runat="server" Text="Select view" OnClick="check2" BackColor="#CCFFFF" ForeColor="#006666" BorderStyle="None" Font-Names="Raleway, cursive;" /><br />

			<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

				<asp:View ID="View1" runat="server">
				<p style="color:cadetblue; font-family:Verdana;">... contents of the first view : Heize01 (index 0)</p>
				<asp:Image ID="Image1" runat="server" ImageUrl="~/heize1.jpg" />
				</asp:View>

				<asp:View ID="View2" runat="server">
				<p style="color:cadetblue; font-family:Verdana;">... contents of the second view : Heize02 (index 1)</p>
				<asp:Image ID="Image2" runat="server" ImageUrl="~/heize2.jpg" />
				</asp:View>

			</asp:MultiView>
		</div>


		<div>
			<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
			 Chapter4 Slide 130 : Advanced Control Wizard<br /> </p>	

			<asp:Wizard ID="Wizard1" runat="server" OnFinishButtonClick="check3" Font-Names="Raleway" ForeColor="#FFCCCC">
				
				<WizardSteps>
					
					<asp:WizardStep ID="WizardStep1" runat="server" Title="스텝 1">
						<hr />
                     <p style="font-family:Verdana;"> username: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
					 <p style="font-family:Verdana;"> password: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
					</asp:WizardStep>

					<asp:WizardStep ID="WizardStep2" runat="server" Title="스텝 2">
						<asp:Image ID="Image3" runat="server" ImageUrl="~/changmin01.jpg" />
					</asp:WizardStep>

					<asp:WizardStep ID="WizardStep3" runat="server" Title="스텝 3" StepType="Finish">
					 <asp:DropDownList ID="colors" runat="server" Font-Names="raleway" AutoPostBack="True">
				         <asp:ListItem Text ="rosegold" Value="rosegold★" />
				         <asp:ListItem Text ="darkblue" Value="darkblue★" />
				         <asp:ListItem Text ="bloodorange" Value="bloodorange★" />
				         <asp:ListItem Text ="mintgreen" Value="mintgreen★" />
				         <asp:ListItem Text ="aquablue" Value="aquablue★" />
                       </asp:DropDownList><br />
						</asp:WizardStep>

					<asp:WizardStep ID="WizardStep4" runat="server" Title="스텝 4" StepType="Complete">
						<p style="font-family:Delius"> Complete!</p>
						<asp:Label ID="Label1" runat="server" Text="Label" Font-Names="verdana"></asp:Label>
						<asp:Label ID="Label2" runat="server" Text="Label" Font-Names="verdana"></asp:Label>
						<asp:Label ID="Label3" runat="server" Text="Label" Font-Names="verdana"></asp:Label>
						<asp:Label ID="Label4" runat="server" Text="Label" Font-Names="verdana"></asp:Label>
					</asp:WizardStep>

				</WizardSteps>
			</asp:Wizard>
		</div>

		<div>

       <p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
	    Chapter4 Slide 133 : Advanced Control File Upload<br /> </p>	
		<asp:FileUpload ID="FileUpload1" runat="server" BackColor="#CCFFCC" BorderStyle="None" Font-Names="raleway" ForeColor="#009933" /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="File Upload! " OnClick="check4" BackColor="#99FFCC" ForeColor="#003300" BorderStyle="None" Font-Names="Raleway, cursive;" /><br /><hr />
		<asp:Label ID="upresult" runat="server" Text="???" Font-Names="verdana" ForeColor="#CC0099"></asp:Label>

		</div>

		<p style="background-color:aliceblue; color:darkblue; font-size:18px; font-family: 'Montserrat', sans-serif;">
	    Chapter4 Slide 142 : WebUserControl (dodam.ascx,태그프리픽스 넣어주기)<br /> </p>
	

		<asp:Button ID="Button3" runat="server" Text="webUserCtr " OnClick="check5" BackColor="#FFFF66" ForeColor="#003300" BorderStyle="None" Font-Names="Raleway, cursive;" /><br /><br />
		
		<dd:dodam ID="nameSb" runat="server"/>
<dd:dodam ID="addressSb" runat="server" />






    </form>
</body>
</html>
