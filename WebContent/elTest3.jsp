<!-- 표현 언어의 empty 연산자 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<jsp:useBean id="m1" class="sec01".ex01.MemberBean" scope="page"/>
<jsp:setProperty name="m1" property="name" value="이순신"/>
<jsp:userBean id="m2" class="java.util.ArrayList" scope="page"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	empty 연산자
	<h2>
		\${empty m1 } : ${empty m1 }<br> <!-- m1의 name 속성에 값이 설정되어 있으므로 false를 반환 -->
		\${not empty m1 } : ${not empty m1 }<br> <!-- true -->
		\${empty m2 } : ${empty m2 }<br> <!-- ArrayList 객체인 m2는 비어 있으므로 true를 반환 -->
		\${empty "hello" } : ${empty "hello"}<br> <!-- 문자열에 대해 false를 반환 -->
		\${empty null } : ${empty null }<br> <!-- null = true -->
	</h2>
</body>
</html>