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
	font-size: 30px;
	background-image: url("https://media.istockphoto.com/photos/wallpaper-for-medical-use-tablets-capsules-pills-etc-picture-id1168915134?k=6&m=1168915134&s=170667a&w=0&h=_OmPrNbx-xm2KuvIFunRZ66anClGjkjBZFkzezQQzWI=");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	
}
table {
	width: 50%;	
}
a:link {
  text-decoration: none;
}
</style>
<meta charset="UTF-8">
<title>Medicare - Your Cart</title>
</head>
<body>
<center>
<jsp:include page="/WEB-INF/jsp/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/jsp/components/topbar.jsp" ></jsp:include>

<%
if (request.getParameter("error") != null)
	out.print(request.getParameter("error") + "<br>");
%>

<br><br>Total Cart Value: ${cartValue }<br><br>	

<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Product</b></td>
 		<td><b>Qty</b></td>
 		<td><b>Rate</b></td>
 		<td><b>Price</b></td>
 		<td><b>Action</b></td>
 	</tr>
 	<c:forEach items="${cartItems}" var="item">
 	  	<tr>
	 		<td>${item.name }</td>
 			<td>${item.rate }</td>
 			<td>${item.qty}</td>
 			<td>${item.price}</td>
 	  		<td>
 	  			<a href="cartdeleteitem?id=${item.productId}">Remove</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table> 		

<br>
 <c:if test = "${cartItems.size() > 0}">
	<a href="checkout">Checkout Now</a>
</c:if>
</center>
<jsp:include page="/WEB-INF/jsp/components/footer.jsp"></jsp:include>
</body>
</html>