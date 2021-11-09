<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${empty param.dan}">
<p>단을 입력해주세요</p>
</c:when>

<c:when test="${param.dan>9 or param.dan<2}">
<p> 2~9사이의 단을 넣어주세요</p>
</c:when>


<c:otherwise>
${param.dan } 단
<br>
<c:forEach begin="1" end="9" var="i">

${param.dan } x ${i } = ${param.dan*i }

<br>
</c:forEach>

</c:otherwise>

</c:choose>
</body>
</html>