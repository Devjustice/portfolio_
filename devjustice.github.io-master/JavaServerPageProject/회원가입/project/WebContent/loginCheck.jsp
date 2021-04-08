<%@ page import ="com.project.tfa.DBUtil" %>

<%@ page import ="java.sql.Connection" %>
<%@ page import= "java.sql.Statement" %>
<%@ page import= "java.sql.ResultSet" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pass = request.getParameter("password");

Connection conn = DBUtil.getMySQLConnection();

String sql = "select * from member where id =?";
PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setString(1, id);
ResultSet rs = pstmt.executeQuery();
String password;
rs.next();
password = rs.getString("password");
DBUtil.close(rs);
DBUtil.close(pstmt);
DBUtil.close(conn);

if(password.equals(pass)){
	out.println("<script>");
	out.println("alert('로그인이 되었습니다')");
	out.println("location.href='main.jsp'");
	out.println("</script>");
	
	
}else{
	
	out.println("<script>");
	out.println("alert('잘못 입력하셨습니다.')");
	out.println("location.href='main.jsp'");
	out.println("</script>");
	
	
	
	
}





%>




</body>
</html>