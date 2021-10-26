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
<%--스크립트릿 --%>
<%
out.println(new Date());

%>


<%--익스프레션도 스크립트립처럼 자바 스크립트를 만드는 코드 --%>
<%=new Date() %>

</body>
</html>