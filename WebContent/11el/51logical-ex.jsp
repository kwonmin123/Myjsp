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
<%
int [] arr = {1,2,3,4};
int [] arr1 = {0,2,3,5};
int [] arr2 = {2,3};

pageContext.setAttribute("x", 6);
pageContext.setAttribute("y", 3);
pageContext.setAttribute("a", arr);
pageContext.setAttribute("b", arr1);
pageContext.setAttribute("c", arr2);


%>
참조값 비교
<%-- <p>${a > b }</p>
<p>${a < c }</p> --%>

<p>${x eq 5 or y eq 5 }</p>
<p>${x == 5 || y == 5 }</p>

<p>${not (x eq y) }</p>
<p>${! (x == y) }</p>


</body>
</html>






















