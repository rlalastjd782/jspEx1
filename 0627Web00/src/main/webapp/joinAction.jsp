<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.UserDAO" %>  <!-- DAO인스턴스 -->
<%@ page import = "java.io.PrintWriter" %>  <!-- 출력 도와주는 객체 -->
<% request.setCharacterEncoding("UTF-8"); %> <!-- 스크립트릿  -->
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />

<!-- jsp 에서 클래스의 setter함수를 호출한것과 마찬가지 -->
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원가입액션</title>
</head>
<body>

<%
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(user);
	//회원가입함수 실행 결과값에 따라서 화면으로 뿌려줄 스크립트 생성
	//백엔드에서 유효성검사
	if(user.getUserID()==null || user.getUserPassword()==null ||user.getUserName()==null ||user.getUserGender()==null ){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안된 부분이있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	
	if(result==1){	//회원가입 성공시
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='login_booot.jsp'");
		script.println("</script>");
	}

	else if(result==-1){	 //데이터베이스 오류
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디가 이미 존재합니다.')");
		script.println("history.back()");	//뒤로가기
		script.println("</script>");
	}else{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('처리하지못한 에러가 발생하였습니다.')");
		script.println("history.back()");	//뒤로가기
		script.println("</script>");
	}
		
%>

</body>
</html>