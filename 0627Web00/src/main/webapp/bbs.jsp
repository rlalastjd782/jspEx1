<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "bbs.Bbs"%>
<%@ page import = "java.io.PrintWriter" %>  <!-- 출력 도와주는 객체 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="bbsDao" class="bbs.BbsDAO"></jsp:useBean>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<title>게시판</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
</head>
<body >
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			<table >
				<thead>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</thead>
				<tbody>
					<%
						int pageNumber = 1;	//1페이지로 기본설정
						if(request.getParameter("pageNumber") !=null){
							//게시판목록화면에 이미 페이지번호가 요청된것이 있다면 그값으로 페이지세팅
							pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
						}
						ArrayList<Bbs> list = bbsDao.getList(pageNumber);
						pageContext.setAttribute("bbsList", list);
					%>
					 <!-- 반복문에서 iterator를 어떻게 설정할것인가가 포인트.
					 자바변수 그대로 사용할수 없고 내장객체중 어딘가에 담아서 사용해야한다. -->
					<c:forEach var="bbs" items="${bbsList}">
				 		<tr>
							<td><c:out value="${bbs.bbsID}"/></td>
							<td><c:out value="${bbs.bbsTitle}"/></td>
							<td><c:out value="${bbs.writer}"/></td>
							<td><c:out value="${bbs.crDate}"/></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	

</body>
</html>