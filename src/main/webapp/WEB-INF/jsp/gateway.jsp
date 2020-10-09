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
	background-image: url("https://media.istockphoto.com/photos/wallpaper-for-medical-use-tablets-capsules-pills-etc-picture-id1168915134?k=6&m=1168915134&s=170667a&w=0&h=_OmPrNbx-xm2KuvIFunRZ66anClGjkjBZFkzezQQzWI=");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	
}
a:link {
  text-decoration: none;
}
</style>
<meta charset="UTF-8">
<title>Medicare - Make Payment</title>
</head>
<body>
<center>
<jsp:include page="/WEB-INF/jsp/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/jsp/components/topbar.jsp" ></jsp:include>



<br><br>
Your card will be charged an amount of ${cartValue}<br><br>

<a href="completepurchase">Click to complete checkout</a>
</center>
<jsp:include page="/WEB-INF/jsp/components/footer.jsp"></jsp:include>
</body>
</html>