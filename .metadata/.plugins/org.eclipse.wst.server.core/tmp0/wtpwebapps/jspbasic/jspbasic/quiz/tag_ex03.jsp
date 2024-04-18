<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<Integer> list = new ArrayList<>(); // ArrayList 오타 수정
	Random ran = new Random();
	while(list.size() < 6) {
		int num = ran.nextInt(45)+1; // 변수 할당 시 '=' 기호 추가
		
		if(!list.contains(num)) {
			list.add(num);
		}
	}
	Collections.sort(list); // Collections 오타 수정


%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>tag_ex03</title>
	</head>
	<body>
		출력 결과 <br>
		이번주 로또번호 <%=list%>
		<!-- 
		ArrayList를 새용하여 1~45까지 랜덤한 번호를 발생시키고 리스트에 담으세요.
		
		body태그에서
		이번주 로또번호 [1,2,3,4,5,6] 형식으로 출력
		
		단, list.contains(값) => 중복을 피하면 됩니다.
		Collections.sort(리스트) => 오름 자순 정렬 -->
	
	</body>
</html>
