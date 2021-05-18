<%@ page contentType="text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");

	String email = request.getParameter("email");
	String pw = request.getParameter("password");

	if (email.equals("hanguk@naver.com") && pw.equals("1234")) {
		response.sendRedirect("../../index.jsp?email="+email);
	} else {
%>

<script>
	alert("이메일과 비밀번호를 다시 확인하세요.");
	location.href = './login.jsp';
</script>

<%
	}
%>
