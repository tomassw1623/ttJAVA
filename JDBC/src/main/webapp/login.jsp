<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("user_id") != null){
		response.sendRedirect("mypage.jsp");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>login.jsp</title>
	</head>
	<body>
		<h2>로그인 연습</h2>
		<form action="login_ok" method="post">
			ID : <input type="text" name="id"><br>
			PW : <input type="password" name="pw"><br>
			<input type="submit" value="로그인">
		</form>
	</body>
</html>