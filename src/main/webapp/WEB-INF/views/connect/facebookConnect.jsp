<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page session="false" %>

<h3>Connect to Facebook</h3>

<form action="<c:url value="/connect/facebook" />" method="POST">
	<input type="hidden" name="scope" value="publish_stream,user_photos,offline_access" />
	<div class="formInfo">
		<p>You aren't connected to Facebook yet. Click the button to connect Spring Social Roo with your Facebook account.</p>
	</div>
	<p><button type="submit"><img src="<c:url value="/images/social/facebook/connect_light_medium_short.gif" />"/></button></p>
</form>
