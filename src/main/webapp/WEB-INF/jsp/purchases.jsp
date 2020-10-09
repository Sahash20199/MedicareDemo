<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<style>

body {
	font-size: 28px;
	background-image: url("https://media.istockphoto.com/photos/wallpaper-for-medical-use-tablets-capsules-pills-etc-picture-id1168915134?k=6&m=1168915134&s=170667a&w=0&h=_OmPrNbx-xm2KuvIFunRZ66anClGjkjBZFkzezQQzWI=");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	
}
a:link {
  text-decoration: none;
}
table {
	width: 50%;	
}
</style>
<meta charset="UTF-8">
<title>Medicare - Your Order</title>
</head>

<body >
<center>
<jsp:include page="/WEB-INF/jsp/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/jsp/components/topbar.jsp" ></jsp:include>

<br>Total ${list.size()} Orders: ${totalAmount }<br><br>	

<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Order ID</b></td>
 		<td><b>Date</b></td>
 		<td><b>Total</b></td>
 		<td><b>Items</b></td>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.ID }</td>
 			<td>${item.date }</td>
 			<td>${item.total}</td>
 			<td>
 				${mapItems.get(item.ID)}
 			</td>
 	  	</tr>
 	  </c:forEach>
</table> 		

<br>
</center>
<jsp:include page="/WEB-INF/jsp/components/footer.jsp"></jsp:include>
</body>
</html>