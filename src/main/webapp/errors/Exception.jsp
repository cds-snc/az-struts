<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Exception — az struts</title>
</head>
<body>
	<h1>L’application a rencontré un problème.</h1>

	<h4>Exception Name</h4>
	<p><s:property value="exception"/></p>
	<h4>Exception Details</h4>
	<p><s:property value="exceptionStack"/></p>

	<p><a href="index.jsp">Retournez à la page d’accueil.</a></p>
</body>

</html>