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
	background-image: url("https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-minimalist-gradient-medical-background-gradienth5ad-image_77129.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>
<meta charset="UTF-8">
<title>Medicare - Registration Confirmation</title>
</head>
<center>
<body>
<%-- <jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>--%>
<%-- <jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>--%>

${error } <a href="login"><h3>Login to continue shopping</h3></a><br>

<%-- <jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>--%>
</body>
</center>
</html>