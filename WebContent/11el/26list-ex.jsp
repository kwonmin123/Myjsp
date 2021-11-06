<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<%
List<String> list1 = new ArrayList<>();
list1.add("v");
list1.add("suga");
list1.add("rm");

String[] arr1 = {"jk", "jin", "jimin", "hope"};
list1.addAll(Arrays.asList(arr1));
pageContext.setAttribute("data1", list1);
pageContext.setAttribute("data2", arr1);

%>

<%-- v, suga, rm, jk, jin, jimin, hope --%>
data1 <br>
${data1[0]}
${data1[1]}
${data1[2]}
${data1[3]}
${data1[4]}
${data1[5]}
${data1[6]}

<hr>
data2 <br>
${data2[0]}
${data2[1]}
${data2[2]}
${data2[3]}

</body>
</html>

















