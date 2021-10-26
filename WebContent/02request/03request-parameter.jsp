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
.input{
border: 5px solid blue;
height: 700px
width: 100px
}
#input2{
border: 5px solid red;
height: 700px
width: 100px
}
</style>
<body>
<h1>request parameter</h1>
<p><%= request.getParameter("q") %></p>

<hr>
<form>

<input class="input" id="input1" name="q1"  autocomplete="off" spellcheck="false" role="combobox" aria-live="polite" placeholder=" 검색 또는 URL 입력">


<input class="input" id="input2" name="q2"  autocomplete="off" spellcheck="false" role="combobox" aria-live="polite" placeholder=" 검색 또는 URL 입력">

<input type="submit">
</form>

<%
String param = request.getParameter("q1");

if (param == null ||param.equals("")) {
%>
	<p> 사용자가 아닙니다</p>
<%
} else {
%>
	<p> <%=param %> 사용자이군요</p>
<%
}
%>

<%
String param2 = request.getParameter("q2");

if (param == null ) {
%>
	<p>검색어를 입력해주세요</p>
<%
} else {
%>
	<p><%=param2 %>를 검색합니다</p>
<%
}
%>

</body>
</html>