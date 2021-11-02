<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="04attri1.jsp">선택하기</a>
<%

Set<String> set = (Set<String>) session.getAttribute("foods");

if (set == null) {
	set = new HashSet<>();
}
String food = request.getParameter("fruits");
	set.add(food);
	session.setAttribute("foods", set);

	
%>

<div>
	<h1>선택한 음식들</h1>
	<ul>
<%
for(String i : set){
	
%>
<li><%=i %></li>

<%
}
%>
	</ul>
</div>

</body>
</html>