<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 스크립트릿 안에 자바 코드를 사용해 ID가 정상적으로 입력되었는지 체크한 후
	정상 입력 여부에 따라 동적으로 다른 결과를 출력하도록 구현
	*/
	
	request.setCharacterEncoding("UTF-8");
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 출력 창</title>
</head>
<body>
<%
	if(user_id==null || user_id.length()==0){ //ID가 정상적으로 입력되었는지 체크합니다.
%>
	아이디를 입력하세요.<br>						<!-- ID를 입력하지 않았을 경우 다시 로그인창으로 이동합니다. -->
	<a href="/pro12/login.html">로그인하기</a>
	<%
	}else{
	%>
	<h1>환영합니다. <%=user_id %> 님!!!</h1> <!-- ID를 정상적으로 입력했을 경우 메시지를 표시합니다. -->
	<% 
	}
%>
</body>
</html>