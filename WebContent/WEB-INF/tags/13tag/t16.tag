<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="map" type="java.lang.Object"%>

<table class="table-dark">
	<c:forEach items="${map }" var="m">
		<tr>
			<td>${m.key }</td>
			<td>${m.value }</td>
		</tr>
	</c:forEach>
</table>

