<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- form>input:number+select>(opt)*4^input:number+input:s -->
<form action="">
	<input type="number" name="num1" id="">
	<select name="operator" id="">
		<option value="plus">+</option>
		<option value="minus">-</option>
		<option value="times">X</option>
		<option value="divide">/</option>
	</select>
	<input type="number" name="num2" id="">
	<input type="submit" value="계산">
</form>

<hr>

<%-- 계산 결과 출력되도록 작성 서버연산--%>
<%
String int1 = request.getParameter("num1");
String int2 = request.getParameter("num2");
int a=0;
int b=0;
int result=0;
if(int1!=null){
 a= Integer.parseInt(int1);
}
if(int2!=null){
 b= Integer.parseInt(int2);
}
String calcul =request.getParameter("operator");
if(calcul!=null){
if(calcul.equals("plus")){
		result=a+b;
}
if(calcul.equals("minus")){
	result=a-b;
}
if(calcul.equals("times")){
	result=a*b;
}
if(calcul.equals("divide")){
	result=a/b;
}
}

%>
<p>결과 값은<%=result %>입니다</p>
</body>
</html>









