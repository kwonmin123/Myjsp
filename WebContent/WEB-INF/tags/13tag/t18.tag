<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="others" %>
<ul>
<c:forEach items="${others }" var="i">
<li>
${i.value }

</li>
</c:forEach>


</ul>
${others.attr2 } <br>