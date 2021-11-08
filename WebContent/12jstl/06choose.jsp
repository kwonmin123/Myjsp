<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>choose</h1>
<c:choose>
<c:when test="${param.age>20 }">
<p>투표가능한 나이입니다</p>
</c:when>
<c:otherwise>
<p>투표 불가능합니다</p>
</c:otherwise>
</c:choose>
<p>
${param.age>20 ? "투표가능합니다" :"투표불가능합니다"}
</p>
</body>
</html>