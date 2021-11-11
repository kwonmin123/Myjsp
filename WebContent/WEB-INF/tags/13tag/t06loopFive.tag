<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:forEach begin="0" end="4" varStatus="s">
<p>${s.count } : <jsp:doBody></jsp:doBody> </p>
</c:forEach>

