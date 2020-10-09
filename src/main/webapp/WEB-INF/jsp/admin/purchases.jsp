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
font-size: 25px;
	background-image: url("https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-minimalist-gradient-medical-background-gradienth5ad-image_77129.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>
<meta charset="UTF-8">
<title>Admin - Purchases Report</title>
</head>
<body >
<center>
<jsp:include page="/WEB-INF/jsp/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/jsp/components/admin-topbar.jsp" ></jsp:include>

<br><br>Total ${list.size()} Orders: ${totalAmount }  
<br>

<table width=50% border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Order ID</b></td>
 		<td><b>User</b>
 		<td><b>Date</b></td>
 		<td><b>Total</b></td>
 		<td><b>Items</b></td>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.ID }</td>
 			<td>
 				${mapUsers.get(item.ID)}
 			</td>
 			<td>${item.date }</td>
 			<td>${item.total}</td>
 			<td>
 				${mapItems.get(item.ID)}
 			</td>
 	  	</tr>
 	  </c:forEach>
</table> 		

<h1>Filter by</h1>
<table>
<tr>
<td>
<form action="adminsearch" method="get">
	<input type=hidden name=id value="0">
	<button>Date</button>
</form>
</td>
<td>
<form action="admincategory" method="get">
	<input type=hidden name=id value="0">
	<button>Category</button>
</form>
</td>
</tr>
</table>
</center>
<jsp:include page="/WEB-INF/jsp/components/admin-footer.jsp"></jsp:include>
</body>
</html>