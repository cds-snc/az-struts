<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>az struts</title>
  </head>
  <body>
    <h1>az struts</h1>
    <p>Ici, c’est une toute petite application
        <a href="https://struts.apache.org/index.html" target="_blank">Struts 2</a>
        à expérimenter en déploiement sur
        <a href="https://azure.microsoft.com/en-ca/overview/what-is-azure/" target="_blank">Azure</a>.</p>
    <br />
    <p><a href="<s:url action='hello'/>">Bonjour!</a></p>

    <s:url action="hello" var="helloNancy">
      <s:param name="name">Nancy</s:param>
    </s:url>

    <p><a href="${helloNancy}">Bonjour Nancy!</a></p>
  </body>
</html>
