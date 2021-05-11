<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String url = "jdbc:mysql://localhost/world?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root";
	String passwd = "hyerin453";
	Connection con = null;
	String sql = "select * from oneline";
	PreparedStatement pstmt = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, user, passwd);
	
	
	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(); //select문 실행할 떄
	//pstmt.executeUpdate(); 기타다른 문장 실행할 때
	while(rs.next()) {
		int no = rs.getInt(1);
		String memo = rs.getString(2);
		String wdate = rs.getString(3);
		
		out.println("^^"+no + ": "+ memo + ": (" + wdate + ")+ <br>");
		
		<style>
			<form>
			<input type="button" value="X"></input>
			</form>
		</style>

	}
	rs.close();
	pstmt.close();
	con.close();
	out.println("DB조회 성공");
	
	
%>
	<form method="post" action="memo01.html">
		<input type="submit" value="작성"></input>
	</form>

</body>
</html>