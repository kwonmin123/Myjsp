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
<%
List<String> list = new ArrayList<>();
list.add("apple");
list.add("phone");
list.add("coffee");
list.add("computer");
%>

<form>
<input name="num" >
<input type="submit">
</form>
<%--value를 넣어서 오류를 해결해볼수 있나? 불가능 일단 기본적으로 시작페이지 구동할때 num값이 null이됨--%>
<%-- 그 다음에 value대입됨 --%>
<%
String num1 = request.getParameter("num");
if(num1==null){
	out.print("<p>상품이 없습니다</p>");
}
else {
int index=Integer.parseInt(num1);
if(num1.equals("0")||num1.equals("1")||num1.equals("2")||num1.equals("3")){
	
%>
<p><%=index %>번 상품은 <%=list.get(index) %> 입니다</p>
<%
} else{


%>

<p> <%=index %>번 상품은 준비중입니다</p>
<%
	}
}
%>



<%-- num이 0~3이면 --%>
<%-- num번 상품은 apple / phone / coffee / computer 입니다. --%>

<%-- 그렇지 않으면 (null 이거나 0~3이 아니면) --%>
<%-- 해당 상품이 존재하지 않습니다. --%>
</body>
</html>














