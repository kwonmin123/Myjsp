<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="sample03javabean.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

table, th, td {
	border: 1px solid black;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<%
		List<Bean06> list = new ArrayList<>();
	list.add(new Bean06("java", "kim", 10000));
	list.add(new Bean06("react", "lee", 15000));
	list.add(new Bean06("jsp", "park", 20000));
	list.add(new Bean06("vue", "choi", 25000));
	list.add(new Bean06("spring", "son", 30000));
	list.add(new Bean06("mysql", "cha", 35000));

	request.setAttribute("books", list);
	%>
	<h3>결과</h3>
	<!-- table>tr>th*4^tr*6>td*4 -->
	<table>
		<tr>
			<th>#</th>
			<th>제목</th>
			<th>저자</th>
			<th>가격</th>
		</tr>

		<c:forEach items="${books }" var="i" varStatus="s">
			<tr>
				<td>${s.count}</td>
				<td>${i.title}</td>
				<td>${i.write}</td>
				<td>${i.price}</td>
			</tr>
		</c:forEach>
	</table>
	<hr>

	<h3>forEach</h3>

</body>
</html>


























