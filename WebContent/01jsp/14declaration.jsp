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
<%!
private int add(int a,int b){
	return a+b;
}
private int subtract(int a, int b){
	return a-b;
}
private int multi(int a, int b){
	return a*b;
}
private int divide(int a,int b){
	return a/b;
}
%>
<%= add(5,7) %><br>
<%= subtract(5,7) %><br>
<%= multi(5,7) %><br>
<%= divide(5,7) %><br>
</body>
</html>