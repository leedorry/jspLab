<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.Cookies"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("email");
	String pw = request.getParameter("password");

	if (id.equals("hanguk@naver.com") && pw.equals("1234")) {
		//response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
		session.setAttribute("MEMBERID", id);
		response.sendRedirect("../main/index.jsp");
		/* response.sendRedirect("../main/index.jsp?email="+id); */
	} else {
%>

<script>
	alert("이메일과 비밀번호를 다시 확인하세요.");
	history.go(-1);
</script>

<%
	}
%>
