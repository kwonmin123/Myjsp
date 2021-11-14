<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="datas" type="java.util.List" %>
<%// attribute name="datas" type="java.lang.Object" %>
<ul>
<c:forEach items="${datas }" var="s">
<li>${s}</li>
</c:forEach>

</ul>