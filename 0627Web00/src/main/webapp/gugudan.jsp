<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>	
<!-- 	jstl el 을이용한 구구단 만들기 -->
	<c:forEach var = "dan" begin="2" end="12">
		<c:forEach var = "i" begin="1" end="9">
				<c:out value="${dan} * ${i} = ${dan*i}"></c:out>
				<br>
		</c:forEach>
		<br>
	</c:forEach>
	
<!-- jstl el 을 이용하여 과일 리스트뽑기 -->
<!-- 	c:set 변수설정 및 리스트 만들기 -->
	<c:set var="fruits" value="{사과, 오렌지, 수박, 토마토}"></c:set>
<!-- 	forEach를 이용한 반복문사용 -->
	<c:forEach var="fruit" items="${fruits}">
		<c:out value="${fruit} "></c:out>
		<br>

	</c:forEach>
	
<!-- jstl el을 이용하여  -->	


</body>
</html>