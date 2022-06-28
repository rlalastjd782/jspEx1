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
	

</body>
</html>