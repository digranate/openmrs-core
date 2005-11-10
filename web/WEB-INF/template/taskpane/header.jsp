<!DOCTYPE html PUBLIC �-//W3C//DTD XHTML 1.0 Strict//EN
  http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd>

<%@ page import="org.openmrs.web.Constants" %>
<%
	pageContext.setAttribute("msg", session.getAttribute(Constants.OPENMRS_MSG_ATTR)); 
	pageContext.setAttribute("err", session.getAttribute(Constants.OPENMRS_ERROR_ATTR));
	session.removeAttribute(Constants.OPENMRS_MSG_ATTR);
	session.removeAttribute(Constants.OPENMRS_ERROR_ATTR); 
%>

<html>
	<head>
		<link href="taskpane.css" type="text/css" rel="stylesheet" />
		<script src="taskpane.js"></script>
	</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<div id="userBar">
		<openmrs:isAuthenticated converse="false">
			<spring:message code="header.logged.in"/> ${authenticatedUser} | 
			<a href='<%= request.getContextPath() %>/logout'>
				<spring:message code="header.logout" />
			</a>
		</openmrs:isAuthenticated>
		<openmrs:isAuthenticated converse="true">
			<spring:message code="header.logged.out"/> | 
			<a href='<%= request.getContextPath() %>/login.htm'>
				<spring:message code="header.login"/>
			</a>
		</openmrs:isAuthenticated>
		| <a href='<%= request.getContextPath() %>/help.jsp'><spring:message code="header.help"/></a>
	</div>
	<div id="content">

			<c:if test="${msg != null}">
				<div id="openmrs_msg"><spring:message code="${msg}" text="${msg}"/></div>
			</c:if>
			<c:if test="${err != null}">
				<div id="openmrs_error"><spring:message code="${err}" text="${err}"/></div>
			</c:if>

			

					