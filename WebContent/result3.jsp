<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 첫번째 if문에서 먼저 ID가 입력되었는지 체크한 후 정상적으로 입력되었으면
	// 다시 내부 if문을 수행하여 ID가 admin인지 체크합니다.
	request.setCharacterEncoding("UTF-8");
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과출력창</title>
</head>
<body>
<%
	if(user_id == null || user_id.length()==0){
%>
	아이디를 입력하세요.<br>
	<a href="/pro12/login.html">로그인하기</a>
<%
	}else{
		if(user_id.equals("admin")){
%>
	<h1>관리자 로그인 했습니다.</h1>
	<form>
		<input type=button value="회원정보 삭제하기" />
		<input type=button value="회원정보 수정하기" />
	</form>
<%
		}else{
%>			
		<h1>환영합니다 <%=user_id %>님!!!</h1>
<%
		}
	}
%>
</body>
</html>