<%@page import="java.util.Map.Entry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>


<% 
Map<String, String> map = new HashMap<>();

map.put("param1",URLEncoder.encode("자바", "utf-8"));
map.put("param2",URLEncoder.encode("hello world", "utf-8"));
map.put("param3",URLEncoder.encode("스프링", "utf-8"));

String add ="?";
for(Entry a :map.entrySet()){
	add+=a.getKey()+"="+a.getValue()+"&";
}

System.out.print(add);
String loc="15to.jsp"+add;
response.sendRedirect(loc);
%>