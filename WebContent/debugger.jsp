<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="a" uri="/WEB-INF/tags/mets.tld" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Tester</title>
</head>

<body>

<h2>Bean Viewer</h2>
<%@ page import="java.lang.reflect.*" %>
<jsp:useBean id="OracleForm" class="bean.FormBean" scope="application" />
<table>
<tr>
	<th width="204" align="left">Parameter Name</th>
	<th width="212" align="left">Parameter Value</th>
</tr>

<a:beaner bean = "OracleForm">
<tr>
	<td>${name}</td>
	<td>${value}</td>
</tr>
</a:beaner>
</table>

<h2>Request Parameters</h2>

<table>
<tr>
	<th width="204" align="left">Parameter Name</th>
	<th width="212" align="left">Parameter Value</th>
</tr>

<c:forEach var="p" items="${param}">
<tr>
	<td> <c:out value="${p.key}"/> </td>
	<td> <c:out value="${p.value}"/> </td>
</tr>
</c:forEach>
</table>

<h2>Http Headers</h2>
<table>
<tr>
	<th width="171" align="left">Header Name</th>
	<th width="246" align="left">Header Value</th>
</tr>
<c:forEach var="h" items="${header}">
<tr>
	<td class="name"> ${h.key} </td>
	<td> ${h.value} </td>
</tr>
</c:forEach>
</table>

<% 
	request.setAttribute("r1", "r1");
	request.setAttribute("r2", "r2"); 
	session.setAttribute("s1", "s1");
	session.setAttribute("s2", "s2");
	application.setAttribute("a1", "a1");
	application.setAttribute("a2", "a2");
%>

<h2>ServletContext</h2>
<table width="368">
<thead><tr>
	<th width="230" align="left">Parameter Name</th>
	<th width="126" align="left">Parameter Value</th>
</tr></thead>
<c:forEach var="p" items="${applicationScope}">
<tr>
	<td class="name">${p.key}</td>
	<td><c:out value="${p.value}" default="no value for attribute"/></td>
</tr>
</c:forEach>
</table>


<h2>Request</h2>
<table width="368">
<thead><tr>
	<th width="230" align="left">Parameter Name</th>
	<th width="126" align="left">Parameter Value</th>
</tr></thead>
<c:forEach var="x" items="${requestScope}">
<tr>
	<td class="name">${x.key}</td>
	<td><c:out value="${x.value}" default="no value for attribute"/></td>
</tr>
</c:forEach>
</table>

<h2>Session</h2>
<table width="368">
<thead><tr>
	<th width="230" align="left">Parameter Name</th>
	<th width="126" align="left">Parameter Value</th>
</tr></thead>
<c:forEach var="x" items="${sessionScope}">
<tr>
	<td class="name">${x.key}</td>
	<td><c:out value="${x.value}" default="no value for attribute"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>