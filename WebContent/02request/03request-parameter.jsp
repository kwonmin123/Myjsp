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
<input class="input" id="input1" type="search" autocomplete="off" spellcheck="false" role="combobox" aria-live="polite" placeholder=" 검색 또는 URL 입력">
<button>입력</button>
<input class="input" id="input2"type="search" autocomplete="off" spellcheck="false" role="combobox" aria-live="polite" placeholder=" 검색 또는 URL 입력">
<button>입력</button>

<%
String param = request.getParameter("q");

if (param == null || !param.equals("java")) {
%>
	<p>자바 사용자가 아니군요</p>
<%
} else {
%>
	<p>자바 사용자이군요</p>
<%
}
%>

</body>
</html>


















