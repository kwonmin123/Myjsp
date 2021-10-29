<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>context path (context root)</h1>
context root : <%= request.getContextPath() %>

<h1>파일 수정됨</h1>
<h1>또 수정됨</h1>
</body>
</html>