<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="Home.aspx.cs" Inherits="GroupProject.Home" %>
<asp:Content ID="content1" ContentPlaceHolderID="main" runat="server">

<!-- Slideshow container -->
<div class="slideshow-container">
		
 <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
   
	 <asp:Image ID="Image1" runat="server"   ImageUrl="~/pics/home1.jpg"   CssClass="homeImages" />
    
  </div>

  <div class="mySlides fade">
    
	  <asp:Image ID="Image2" runat="server"   ImageUrl="~/pics/home2.jpg"   CssClass="homeImages" />
   
  </div>

  <div class="mySlides fade">
   
	  <asp:Image ID="Image3" runat="server"   ImageUrl="~/pics/home3.jpg"  CssClass="homeImages" />
   
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>


	<!-- The dots/circles -->
 <div style="text-align:center; margin:3px;">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
 </div>
</div>



	



</asp:Content>
