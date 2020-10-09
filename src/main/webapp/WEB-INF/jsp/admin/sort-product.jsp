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
table {
	width: 50%;
}
</style>
<meta charset="UTF-8">
<title>Admin - Add/Edit Product</title>
</head>
<body>
<center>
<jsp:include page="/WEB-INF/jsp/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/jsp/components/admin-topbar.jsp" ></jsp:include>
<%
if (request.getParameter("error") != null)
	out.print(request.getParameter("error"));
%>

<form name=frmProduct method=get action="adminsortproductaction">
	<input type=hidden name=id value="${product.ID }">
<table border=1 cellspacing=2 cellpadding=4>
	<tr>
 		<td width=25%>Category*</td>
 		<td>
 			<select name=category>
 				<option value="0">Select category</option>
 				${catDropdown}
 			</select>
 		</td>
 	</tr>
 	
 	<tr>
 		<td colspan=2>
 			<button>Search</button>
 		</td>
 	</tr>
 </table>
</form>
</center>
<jsp:include page="/WEB-INF/jsp/components/admin-footer.jsp"></jsp:include>
</body>
</html>