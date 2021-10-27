<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
span {
    border: 7px solid black;
}
</style>
<body>
<p>좋아하는 색 선택(하나만)</p>

<!-- form>(input:r[name=color][value])*5+input:s -->
<form action="">
	<input type="radio" name="color" id="" value="red"> <span style="background-color:red;">빨강</span>
	<input type="radio" name="color" id="" value="blue"> <span style="background-color:blue;">파랑</span>
	<input type="radio" name="color" id="" value="yellow"> <span style="background-color:yellow;">노랑</span>
	<input type="radio" name="color" id="" value="green"> <span style="background-color:green;">초록</span>
	<input type="radio" name="color" id="" value="white"> <span style="background-color:white;">하양</span>
	<input type="submit" value="전송">
</form>

<hr>
<%-- 선택된 색이 출력되도록 java 코드 작성 --%>
<%
String val = request.getParameter("color");

if (val != null) {
	out.print("<div style='background-color:"+val+ "'>"+val+"</div>");
}
%>
</body>
</html>










