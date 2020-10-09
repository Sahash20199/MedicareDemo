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
		margin-top: 170px;	
		margin-bottom: 300px;
		margin-right: 350px;
		margin-left: 350px;
		background-image: url("https://c8.alamy.com/comp/P0APKM/science-chemical-medical-research-lab-for-background-wallpaper-P0APKM.jpg");
		background-attachment: scroll;
		background-repeat: no-repeat;
		background-size: cover;
}
	
	input {
		width: 70%;	
		padding: 20px;
	} 
	table {
		border-color: black;
	}
	table, th, td {
  		border: 10px solid black;
	}
	tr {
		font-weight: bold;
	}
	
	
	
</style>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<body>
<center>
<jsp:include page="/WEB-INF/jsp/components/admin-header.jsp" ></jsp:include>

${error}<br>

<form name=frmLogin action="adminloginaction" method="post">
 <table border=1 cellspacing=2 cellpadding=10>
 	<tr>
 		<td width=30%>Admin id*</td>
 		<td><input name=admin_id maxlength=20></td>
 	</tr>
 	<tr>
 		<td width=30%>Admin Password*</td>
 		<td><input name=admin_pwd maxlength=10 type="password"></td>
 	</tr>
 	<tr>
 		<td  colspan=2>
 			<center><button>Login</button></center>
 		</td>
 	</tr>
 </table>
</form>
</center>
<jsp:include page="/WEB-INF/jsp/components/admin-footer.jsp"></jsp:include>
</body>
</html>