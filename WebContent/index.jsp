
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head><title>Home</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

td {
 padding-top: 5px;
  padding-right: 3px;
  padding-bottom: 5px;
  padding-left: 8px;
  text-align: left;    
}
</style>
</head>
<body class="homepage">
<div class="topnav">
  <jsp:include page="header.jsp"></jsp:include>
</div>
<div id="header">
<br>
<h2><center>Welcome to E-waste Recycling</center></h2>
<br>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/1.png" style="width:90%">
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/2.png" style="width:90%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/3.jpg" style="width:90%">
 
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>


<div class="container">

<h1>What is E-Waste Recycling?</h1>
<table style="width:100%">
	
	<tr>
		<td><section class="6u" id="aba">
 							 <p>One does not need to be a regular user of electronic products to know that electronics <br>
     							will not last for life. So, what happens to them after they break down? Sometimes, they<br>
     							are left to waste away without re-use. Other times, these wastes are recycled.</p>
                        </section>
		</td>
		<td rowspan="3"><img src="images/e-waste.png" height="350" width="500"></td>
  	</tr>
  <tr>
    <td>You may ask, what is e-waste recycling?<br>
      What are the processes involved?<br>
      What benefits are there?<br> 
      We have got you covered.<br>
      So, lets get right to it.
    </td>
    <tr>
    <td>	<p><b>What Actually is E-waste Recycling?</b>
 In addressing this question, we must first consider what e-waste is.
                   So, what is e-waste?</p>
   
 	 </tr>
 	 <hr><hr>
 	 <tr>
		<td><hr><section class="6u" id="aba">
                            <p id="para1">E-waste is short for electronic waste. That is, trash generated from broken,obsolete,and surplus electronic devices.
      You will also hear people refer to it as e-scraps..E-waste recycling refers to the reprocessing and re-use of these
      electronic wastes.It is a process that seeks to recover material from electronic waste.This way, you can use them in
      new electronic products.These electronic wastes may be in the form of home appliances like your air conditioners, 
      televisions,heater, DVDs, fans, microwaves,and radios. They may also be in the form of information tech equipment like
      your computers, laptops, mobile phones, batteries, hard disks,circuit boards, monitors.You should know that e-waste is
      quite crucial because electronics have a short useful life.As such, they become electronic waste at a swift pace.</p>
                        </section>
		</td>
		<td rowspan="2"><img src="images/e-waste5.png" alt="..." height="350" width="500"></td>
  	</tr>
  	<tr>
    <td> <p> E-waste recycling is one of the most talked-about issues in the world today due to its potentials to reduce environmental
       hazards and pollution.There is also the fact that it can protect our lives as humans and other life forms existing in our world.
       Recycling of e-waste is a growing trend and was initiated to protect human and environmental health mainly due to the widespread 
       environmental pollution impacts of e-waste.Even more, millions of electronics are in use daily.Then, when they reach the tail of their
       lifespan, they mostly waste away in landfills.Guess what, only 12.5% of e-waste is recycled.</p>
    </td>
 	 </tr>
 	 <tr><td><section class="6u" id="qwe">
   <p>Recycling electronics is an often challenging activity.<br>
                This is because e-scraps  are typically sophisticated and<br>
                manufactured from diverse elements such as metals, plastics, and glass<br>
                While this process often varies, there is a general process.</p></section>
</table><hr><hr>
<table><p id="para1"><h2>Step-by-Step Process of E-waste Recycling</p></h2>
                 <tr><td>    
                     
                 <h3>  <p id="para1"><b><u>Collecting and Transporting</u></b></p></h3>
                         <p>This is the first stage of recycling e-waste.<br>
                Here, recyclers place take-back booths or collection<br>
                bin in specific places.When these bins get filled,the recyclers <br>
                then transport the e-wastes to recycling facilities and plants.</p>
        </td>          
    <td rowspan="1"><img src="images/collecting and transport.png" alt="..."></td></tr> 
		
		<tr><td><h3><b><hr><p id="para1"><u> Shredding and Sorting</p> </u></b> </h3>

       <p>After collecting and transporting, the next step is to shred and sort the e-waste.
          The success of subsequent separation relies on shredding. And this is why efficiency
          is essential at this stage.Shredding involves breaking e-waste into smaller pieces for
          proper sorting. With the use of hands, these tiny prices get sorted and then manually 
          dismantled.This is  labor-intensive as waste items are, at this stage, separated to
          retrieve different parts.After this, the materials get categorized into core materials
          and components.Then these items get sorted into various categories.Typically,these 
          category includes items that you can re-use as they are and those that require further 
          recycling processes.In any case, e-wastes are often manually sorted, while compounds such as
          fluorescent light, batteries, UPS batteries, and toner cartridges should not be crushed or shredded by hand.</p>
          </td>
          <td rowspan="1"><img src="images/shredding n sorting.png" alt="..."></td></tr>
          
         <tr><td><h3><b><hr><p id="para1"><u>Dust Extraction</u></p></b></h3>
       
      <p>The tiny waste particles get smoothly spread via a shaking process on the conveyor belt.<br> 
         The smoothly spread e-waste pieces then get broken down even further. At this point,the dust<br>
         gets extracted and discarded in an environmentally compliant manner. This way, there is no<br>
         environmental degradation.</p>
         </td>
         <td rowspan="1"><br><br><br><br><br> <img src="images/Dust Extraction.png" alt="..."></td></tr>
         
         
        <tr><td><h3><b><hr><p id="para1"><u>Magnetic Separation</u></p></b></h3>
       
      <p>After this, a strong overhead magnet helps you separate steel and iron from other wastes.<br>
              This way, you have successfully recycled the steel from the waste stream.<br>
              However, some mechanical processes may sometimes be required to separate circuit board,<br>
              copper, and aluminum from other wastes particles. And this is especially where they are mostly plastic..</p>
         </td>
         <td rowspan="1"><br><br><br><br><br> <img src="images/magnetic separation.png" alt="..."></td></tr>
         
         
         <tr><td><h3><b><hr><p id="para1"><u>Water Separation</u></p></b></h3>
       
      <p>After this, water separation tech becomes relevant to separate the glass from the plastic.You can <br>
           then send leads that contain glass to smelters to use in the production of batteries, x-ray tubes, and new CRTs.</p>
         </td>
         <td rowspan="2"> <img src="images/water separation.png" alt="..."></td></tr>
         
          <tr><td><h3><b><hr><p id="para1"><u>Purification of Waste Stream</u></p></b></h3>
       
      <p>The next thing is locating and extracting leftover metals from plastics to purify the waste stream further.</p>
         </td>
        </tr>
 	
 	<tr><td><h3><b><hr><p id="para1"><u>Preparing Recycled Materials For Sale</u></p></b></h3>
       
      <p>The final stage is preparing recycled materials for sale. Here, the materials separated during SSS get<br>
         prepared for sale as raw materials to produce new electronics.</p>
         </td>
         <td rowspan="1"><br><br><br><br><br> <img src="images/recycled product.png" alt="..."></td></tr>
</table>
<hr><hr>

</div>
<div>
  <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html> 

