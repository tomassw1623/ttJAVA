<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		// out.println();, break를 사용하여 구구단 4단
		int i = 1;
		while(true){
			out.println(" 4 x "+i+" = "+4*i+"<br>");
			out.println("=============================<br>");
		%>
		---------------------------------<br>
		<%
			if (i == 9){
				break;
			}
			i++;
		}
		%>
		<form action="submitForm.jsp" method="post">
    <% 
        // 20개의 체크박스 생성
        for (int a = 1; a <= 20; a++) {
    %>
    <input type="checkbox" id="checkbox<%= a %>" name="checkbox<%= a %>" value="<%= a %>">
    <label for="checkbox<%= a %>">Checkbox <%= a %></label>
    <% 
        // 5개마다 줄바꿈
        if (a % 5 == 0) {
    %>
    <br>
    <% 
        }
    %>
    <% 
        }
    %>
    <br>
    <input type="submit" value="Submit">
</form>
		
	</body>
</html>