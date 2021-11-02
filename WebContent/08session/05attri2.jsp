<%@page import="java.util.function.Function"%>
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
<a href="05attri1.jsp">선택하기</a>
<%

Map<String,Integer> map =(Map<String,Integer>) session.getAttribute("foods2");
if(map==null){
	map = new HashMap<>();
}	
String food =(String)request.getParameter("fruits");

if(map.containsKey(food)){
map.compute(food, (k,v)-> v+1);
} else map.put(food,1);

session.setAttribute("foods2", map);


%>

<div>
	<h1>선택한 음식들</h1>
	<ul>
<%
for(Map.Entry<String,Integer> e : map.entrySet()){
	
%>
<li><%=e.getKey() %> : <%=e.getValue() %></li>

<%
}
%>
	</ul>
</div>

</body>
</html>