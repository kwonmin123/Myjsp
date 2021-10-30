<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<div>
<%=request.getParameter("num1") %>
+
<%=request.getParameter("num2") %>
=
<%=Integer.parseInt(request.getParameter("num1"))+Integer.parseInt(request.getParameter("num2")) %>
</div>

