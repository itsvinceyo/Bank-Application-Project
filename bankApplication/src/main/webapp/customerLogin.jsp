<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 style="color: black">Login Page</h3>
<form action="cusLogin" method ="post">
<h1>${message1}</h1>
<table>
<tr>
	<td>UserName :</td>
		<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password1"></td>
			</tr>
			<tr><td><input type="submit" name="submit" value="login"></td></tr>
			</table>
			</form>
</body>
</html>