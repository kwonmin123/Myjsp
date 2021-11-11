<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
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
// 코드 작성
// page 영역 attribute로 map 객체를 data라는 이름으로 넣고
// map에 key, value 쌍을  (key1(String), obj(Bean04))로 추가

Map<Bean03, Bean04> map = new HashMap<>();
Bean04 obj = new Bean04();
Bean03 key1 = new Bean03();

obj.setNickName("korea");
obj.setAge(30000);
obj.setVip(true);
map.put(key1, obj);

pageContext.setAttribute("data", map);
pageContext.setAttribute("key1", "this");
pageContext.setAttribute("nickName", map);
pageContext.setAttribute("age", "age");
pageContext.setAttribute("vip", "vip");
pageContext.setAttribute("key2", "seoul");
%>


<p>${data.key1.nickName }</p>
<p>${data.key1.age }</p>
<p>${data.key1.vip }</p>

<hr>

<p>${data["key1"]["nickName"] }</p>
<p>${data["key1"]["age"] }</p>
<p>${data["key1"]["vip"] }</p>

<hr>
${data}
<%-- <p>1:${key1+[3] }</p>
 --%><p>2:${data[key1]["nickName"] }</p>
<p>3:${data[key1]["age"] }</p>
<p>4:${data[key1]["vip"] }</p>

<%-- <p>5:${[nickName] }</p>
<p>6:${[key2] }</p>
 --%>완벽히 이해함
[] 는 이전 변수중에 받은 키 값을 의미함
\${data}는 받은 어트리뷰트중 data를 의미함 뒤에 .을 붙일수 있는데
참조값 안으로 들어간다는 의미

</body>
</html>
















