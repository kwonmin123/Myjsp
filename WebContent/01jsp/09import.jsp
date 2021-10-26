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
<h1>ArrayList Ex</h1>
<%List<String> arr1 = new ArrayList<>();
arr1.add("java");
arr1.add("jsp");
arr1.add("spring");

for(String a : arr1){

%>
<h1>
<%
 out.println(a);
%>
</h1>
<%
}
%>
</body>
</html>