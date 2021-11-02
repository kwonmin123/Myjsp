<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String location ="14to.jsp";
String parama= "a="+URLEncoder.encode("한글", "utf-8");
String paramb= "b="+URLEncoder.encode("자바는", "utf-8");
String paramc= "c="+URLEncoder.encode("너무 쉬워!!!", "utf-8");

String loc= location+"?"+parama+"&"+paramb+"&"+paramc;

response.sendRedirect(loc);
%>