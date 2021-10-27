<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">

<input type="text" name="param1">
<input type="submit">
<hr>

<form action="">
	<input type="text" name="param2">
	<input type="submit">
</form>
<%= request.getParameter("param1") %>
<%= request.getParameter("param2") %>
</form>
</body>
</html>