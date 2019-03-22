<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Hello page</title>
  </head>
  <body>
    <h1><s:property value="messageStore.message" /></h1>
    <p>I’ve said hello <s:property value="helloCount" /> times!</p>
    <br />
    <p><a href="<s:url action='index'/>">Index page</a></p>

  </body>
</html>