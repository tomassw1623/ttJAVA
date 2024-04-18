<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Grade Result</title>
</head>
<body>
    <h2>점수에 따른 등급</h2>
    <c:choose>
        <c:when test="${param.point >= 90}">
            <p>A 입니다.</p>
        </c:when>
        <c:when test="${param.point >= 80}">
            <p>B 입니다.</p>
        </c:when>
        <c:when test="${param.point >= 70}">
            <p>C 입니다.</p>
        </c:when>
        <c:when test="${param.point >= 60}">
            <p>D 입니다.</p>
        </c:when>
        <c:otherwise>
        	F입니다.
        </c:otherwise>
    </c:choose>
</body>
</html>
