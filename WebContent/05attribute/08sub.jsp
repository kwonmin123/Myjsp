<%@page import="sample01.MyBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
ArrayList<MyBook> list =(ArrayList<MyBook>) request.getAttribute("books");

%>
<ul>
<%

for(MyBook a : list ){

	
//out.print("<li>"+a.getTitle()+":"+a.getPrice()+"</li>");

%>
<li>
<%=a.getTitle() %> : <%=a.getPrice() %>
</li>

<%
}

%>


</ul>