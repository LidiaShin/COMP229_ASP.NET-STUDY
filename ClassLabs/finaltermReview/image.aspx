<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="image.aspx.cs" MasterPageFile="~/finalMaster.master"  Theme="finalreview" Inherits="finaltermReview.image" %>

<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server" >


<asp:Label ID="imagelabel" runat="server" Text="Display Image"></asp:Label>	<br /><br />

<asp:Button ID="displayImage" runat="server" Text="display!"  SkinID="displayBtn" OnClick="displayImage_Click"/> <br /><br />
  
<asp:Image ID="Image1" runat="server" />
       
   
</asp:Content>

