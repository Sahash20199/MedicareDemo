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
<title>Web Application</title>
</head>

<body>
	<font color="red">${errorMessage}</font>
<center>
<h2>Login Page</h2>
<form name=frmLogin action="loginaction" method="post">
	<br/><br/>
 <table   border=1 cellspacing=2 cellpadding=10>
 	<tr>
 		<td width=25%>Email id*</td>
 		<td><input name=email_id maxlength=50></td>
 	</tr>
 	<tr>
 		<td width=25%>Password*</td>
 		<td><input name=pwd maxlength=10 type="password"></td>
 	</tr>
 	<tr>
 		<td></td>
 		<td>
 			<button>Login</button><br>
 			<a href="signup">Not a user? Signup</a>
 		</td>
 	</tr>
 </table>
</form>
</center>
</body>

</html>