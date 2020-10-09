<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	font-size: 25px;
	background-image: url("https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-minimalist-gradient-medical-background-gradienth5ad-image_77129.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	
}
table {
	width: 50%;
}
</style>
<title>Admin - Purchases Report</title>
</head>
<body>
<center>
<jsp:include page="/WEB-INF/jsp/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/jsp/components/admin-topbar.jsp" ></jsp:include>

Total Orders: ${list.size()}  
<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Id</b></td>
 		<td><b>Price</b></td>
 		<td><b>Product id</b></td>
 		<td><b>User id</b></td>
 		<td><b>Purchase id</b></td>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.ID }</td>
 			<td>${item.price }</td>
 			<td>${item.productId}</td>
 			<td>${item.userId}</td>
 			<td>${item.purchaseId}</td>

 	  	</tr>
 	  </c:forEach>
</table> 
</center>	