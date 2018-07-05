<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chap01.aspx.cs" Inherits="midtermReview.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> 중간고사 리뷰 : 챕터1 슬라이드 20, Create First  ASP.NET Page
</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p>안녕하세요 ! </p>
		<p>
			오늘 날짜 :  
			<asp:Label ID="myDateLabel" runat="server" /> <br />
			 
		    지금 시간: 
            <asp:Label ID="myTimeLabel" runat="server" /> <br />
		</p>

        </div>
    </form>
</body>
</html>
