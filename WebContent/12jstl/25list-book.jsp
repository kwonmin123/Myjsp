<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

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
<h1>책 목록</h1>

<a href="25book-form.jsp">책 등록하기</a>

<c:if test="${empty books }" >
	<p>아직 저장된 책이 없습니다.</p>
</c:if>

<c:if test="${not empty books }">
	<table>
		<tr>
			<th>#</th>
			<th>제목</th>
			<th>저자</th>
			<th>가격</th>
			<th>출판사</th>
			<th>재고</th>
		</tr>
		
		<c:forEach items="${books }" var="book" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${book.title }</td>
				<td>${book.writer }</td>
				<td>${book.price }</td>
				<td>${book.publisher }</td>
				<td>${book.stock }</td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
</html>














