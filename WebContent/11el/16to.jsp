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
<h1>16to.jsp</h1>
<h2>
b2 session attri
</h2>
<ul>
<li>b2 age : ${bean2.age}</li>
<li>b2 NickName : ${bean2.nickName}</li>
<li>b2 vip : ${bean2.vip}</li>
</ul>
</body>
</html>