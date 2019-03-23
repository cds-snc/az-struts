<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bonjour! — az struts</title>
  </head>
  <body>
    <h1><s:property value="messageStore.message" /></h1>
    <p>J’ai déjà dit « bonjour » <s:property value="helloCount" escapeJavaScript="true" /> fois!</p>
    <br />
    <p><a href="<s:url action='index'/>">Retournez à la page d’accueil.</a></p>

  </body>
</html>