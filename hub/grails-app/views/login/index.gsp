<%@ page import="hub.Company" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="hub.login.title"/></title>
	</head>
	<body>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:if test="${error}">
		<ul class="errors" role="alert">
			<li><g:message code="${error}"/></li>
		</ul>
	</g:if>	
	<g:form action="login" method="post">
		<g:message code="hub.login.email"/>: <input type="text" name="email">
		<br/>
		<g:message code="hub.login.password"/>: <input type="password" name="password">
		<br>
		<input type="submit" value="<g:message code="hub.login.enter"/>">
	</g:form>
	<g:link controller="recoverPassword"><g:message code="hub.login.recover"/></g:link>
	</body>
</html>
