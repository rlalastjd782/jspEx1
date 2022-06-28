<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	출력할때 %안에 = 을 쓴다 -->
<%-- 	<%= request.getParameter("") %> --%>
<!-- 	위와같음 -->
<%-- 	<% out.println(request.getParameter("age")); %> --%>
	<% 
		int a = Integer.parseInt(request.getParameter("num1")); //무조건 스트링으로 받음
		int b = Integer.parseInt(request.getParameter("num2"));
		int result = a + b;
		response.setHeader("result", result +"");
	
	%>


	</body>
</html>