<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    // 스크립트릿 안에서 변수와 메서드 선언
    int i = 0;
    String str = "Hello World";

    // 메서드 정의 (이 부분에서 오류가 발생할 수 있습니다.)
    // 메서드는 선언할 수 없습니다.
    // 이 부분을 제거하고 해당 메서드 호출을 인라인으로 변경해야 합니다.
    // int method(int a, int b){
    //     return a + b;
    // }

    out.println("i값 : "+i+ "<br>");
    out.println("str 값 : " +str+ "<br>");
    // 메서드 호출은 직접적으로 인라인으로 변경합니다.
    out.println("10과 20의 합 : "+ (10 + 20) + "<br>");
%>

<h1>표현식을 이용한 출력</h1>
i값 : <%=i %><br>
str값 : <%=str %><br>
10과 20의 합 : <%=10 + 20 %><br>

</body>
</html>
