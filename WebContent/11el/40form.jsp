<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>

<form action="40view.jsp" method="post">
	<%-- 코드 작성 --%>
	[id     ] :<input type="text" name="id" value="id"> <br>
	[pw     ] :<input type="text" name="password" value="password"> <br>
	[address] :<input type="text" name="address" value="address"><br>
	[email  ] :<input type="text" name="email" value="email"><br>
	<input type="submit" value="전송">
</form>
</body>
</html>