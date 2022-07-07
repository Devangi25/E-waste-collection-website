<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoice</title>
<link rel="stylesheet" href="invoice.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<table class="body-wrap">
    <tbody><tr>
        <td></td>
        <td class="container" width="600">
            <div class="content">
                <table class="main" width="100%" cellpadding="0" cellspacing="0">
                    <tbody><tr>
                        <td class="content-wrap aligncenter">
                            <table width="100%" cellpadding="0" cellspacing="0">
                                <tbody><tr>
                                    <td class="content-block">
                                        <h2>Thanks for using our Website</h2>
                                         <h1>E-waste Collection<br></h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="content-block">
                                        <table class="invoice">
                                            <tbody><tr>
                                               
                                                <%
         Date date = new Date();
         out.print( "<h5 align = \"right\">" +date.toString()+"</h2>");
      %></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="invoice-items" cellpadding="0" cellspacing="0">
                                                        <tbody><tr>
                                                        <td><h3>Customer Name:</td></h3>
                                                            <td><h3><%=(request.getSession().getAttribute("full_name"))%></h3></td>
                                                            <td class="alignright"></td>
                                                        </tr>
                                                       
                                                        <tr class="total">
                                                            <td class="alignright" width="80%">Total points</td>
                                                            <td class="alignright"><%=(request.getSession().getAttribute("count"))%></td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    </td>
                                </tr>
                           </td></tr>
             <tr>
        <td> <button id="btnPrint" class="hidden-print">Print</button>
        <script src="script.js"></script>
 <script type="text/javascript">       
        const $btnPrint = document.querySelector("#btnPrint");
$btnPrint.addEventListener("click", () => {
    window.print();
});</script></td>
    </tr>
    
</tbody></table>

    
       
   




</body>
</html>