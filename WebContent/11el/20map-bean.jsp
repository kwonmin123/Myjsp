<%@page import="sample03javabean.Bean03"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
<%
Map<String, Bean03> map = new HashMap<>();

Bean03 val1 = new Bean03();
val1.setName("donald");
val1.setAge(3000);

Bean03 val2 = new Bean03();
val2.setName("trump");
val2.setAge(999);

Bean03 val3 = new Bean03();
val3.setName("john");
val3.setAge(9);

map.put("person1", val1);
map.put("person2", val2);
map.put("new person", val3);

pageContext.setAttribute("persons", map);

%>
<p> 1번 이름 :${persons.person1.name}</p>
<p> 1번 나이 :${persons.person1.age}</p>


<p> 2번 이름 :${persons.person2.name}</p>
<p> 2번 나이 :${persons.person2.age}</p>
<!-- 엑셀 느낌 행렬-->
<p> 신입 이름 :${persons["new person"]["name"]}</p>
<p> 신입 나이 :${persons["new person"].age}</p>


</body>
</html>