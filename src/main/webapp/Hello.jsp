<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<t:wrapper>
    <jsp:attribute name="title">Bonjour! — az struts</jsp:attribute>
    <jsp:body>

        <h1><s:property value="messageStore.message" /></h1>
        <p>J’ai déjà dit « bonjour » <s:property value="helloCount" escapeJavaScript="true" /> fois!</p>
        <br />
        <p><a href="<s:url action='index'/>">Retournez à la page d’accueil.</a></p>

    </jsp:body>
</t:wrapper>
