<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	out.print(session.getAttribute("name"));

	%>
<%-- 	자바코드가 아닌 영역에서 ${}를 통해서 객체의 속성값을 쓸 수 있는것이 EL(표현언어)이다 --%>
	<c:choose>
		<c:when test="${sessionScope.name eq '홍길동'}">
			<c:out value="홍길동입니다."></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="홍길동이아니다."></c:out>
		</c:otherwise>
	</c:choose>
</body>
</html>