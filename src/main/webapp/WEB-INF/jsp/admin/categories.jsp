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
<title>Admin - Setup Product Categories</title>
</head>
<body >
<center>
<jsp:include page="/WEB-INF/jsp/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/jsp/components/admin-topbar.jsp" ></jsp:include>

Total Categories: ${list.size()} &nbsp;&nbsp; <a href="admineditcat?id=0">Add Category</a><br>
<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Category</b></td>
 		<td></td>
 	</tr>
 	  <c:forEach items="${list}" var="item">
 	  	<tr>
 	  		<td>${item.name }</td>
 	  		<td>
 	  			<a href="admineditcat?id=${item.ID}">Edit</a> | <a href="admindeletecat?id=${item.ID}">Delete</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table> 	
</center>
<jsp:include page="/WEB-INF/jsp/components/admin-footer.jsp"></jsp:include>
</body>
</html>