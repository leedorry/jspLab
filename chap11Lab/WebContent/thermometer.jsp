<%@page import="chap11.Thermometer"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
	Thermometer thermometer = new Thermometer();
	request.setAttribute("t", thermometer);
%>
<html>
<head>
	<title>온도 변환 예제</title>
</head>
<body>
	<!-- ${requestScope.t.setCelsius('서울', 27.3)} -->
	${t.setCelsius('서울', 27.3)}
	서울 온도: 섭씨 ${t.getCelsius('서울')}도 / 화씨 ${t.getFahrenheit('서울')}

	<br/>
	정보: ${t.info} <br>  <!-- 테스트가 아닌 온도계 변환기 1.1 출력 -->
	정보: ${t.getInfo()} <br> <!-- "온도계 변환기 1.1" -->
	정보: <%= thermometer.getInfo() %> <!-- 자바 -->
</body>
</html>
