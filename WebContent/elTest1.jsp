<!-- 
문자열과 숫자를 더하면 자동으로 숫자로 변환해 합을 구하고
null과 숫자를 더하면 null 을 0으로 인식한다.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %><!-- 표현 언어 기능을 활성화합니다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어에서 사용되는 데이터들</title>
</head>
<body>
	<h1>표현 언어로 여러 가지 데이터 출력하기</h1>
	<h1>
		\${100}: ${100}<br>
		\${"안녕하세요"}: ${"안녕하세요"}<br>
		\${10+1}: ${10+1}<br>
		\${"10"+1}: ${"10"+1}<br> <!-- 숫자형 문자열과 실제 숫자를 더하면 문자열을 자동으로 숫자로 변환하여 더합니다 -->
		<%-- \${null+10}: ${null+10} --%> <!-- null과 10을 더하면 10이 됩니다 -->
		<%-- \${"안녕"+11}: ${"안녕"+11} --%> <!-- 문자열과 숫자는 더할 수 없습니다. -->
		<%-- \${"hello"+"world"}: ${"hello"+"world"} --%> <!-- 문자열끼리는 더할 수 없다 -->
	</h1>
</body>
</html>