<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%-- 04other.jsp forward --%>

<%request.setAttribute("name", "1"); %>
<jsp:forward page="04other.jsp">
<jsp:param value="4" name="name"/>
</jsp:forward>
<%request.setAttribute("name", "2"); %>