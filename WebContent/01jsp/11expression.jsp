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
<%
String[] arr ={"java","html","jsp"};
for(String a : arr){
	
%>
<h1><%= a %></h1>

<%
}
%>

<hr>
<%
for(String b : arr){
	out.print("<h1>"+b+"</h1>");
}
%>

</body>
</html>