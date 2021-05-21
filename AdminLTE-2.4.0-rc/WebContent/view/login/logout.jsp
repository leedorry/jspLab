<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ page import="util.Cookies"%>
<%
	response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));
	response.sendRedirect("login.jsp");
	
%> --%>
<%
	session.invalidate();
	response.sendRedirect("login.jsp");
%>