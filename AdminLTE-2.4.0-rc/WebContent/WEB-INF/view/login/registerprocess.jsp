<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String memberID = request.getParameter("email");
	String password= request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String retypepw = request.getParameter("retypepw");
	
	if(password.equals(retypepw)){
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" +
								"useUnicode=true&characterEncoding=utf8";
			String dbUser = "jspexam";
			String dbPass = "jsppw";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			pstmt = conn.prepareStatement(
				"insert into MEMBER values (?, ?, ?, ?)");
			pstmt.setString(1, memberID);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
			pstmt.executeUpdate();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
%>

<script>
		alert("회원 가입을 축하드립니다!");
		history.go(-2)
</script>

<%
	} else{
%>

<script>
	alert("비밀번호가 동일하지 않습니다. 다시 확인하세요!");
	history.go(-1);
</script>

<%
	}
%>
