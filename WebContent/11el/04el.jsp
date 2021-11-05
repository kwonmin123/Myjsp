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
<%
request.setAttribute("pa1", "pageVal1");
request.setAttribute("ra2", 50000);
request.setAttribute("ra3", true);
pageContext.setAttribute("pa1", "pageA");

%>
<h1>
어트리뷰트 이름이 중복되면 pageContext>request>session>application순으로 대입됨
</h1>
<p>javacode1 :<%= request.getAttribute("pa1") %></p>
<p>el pa1 :${pa1}</p>
<p>javacode1 :<%= request.getAttribute("pa2") %></p>
<p>el pa2 :${pa2}</p>
<p>javacode1 :<%= request.getAttribute("pa3") %></p>
<p>el pa3 :${pa3}</p>

</body>
</html>