<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:wrapper>
    <jsp:attribute name="title">az struts</jsp:attribute>
    <jsp:body>

        <h1>az struts</h1>
        <p>Ici, c’est une toute petite application
            <a href="https://struts.apache.org/index.html" target="_blank">Struts 2</a>
            à expérimenter en déploiement sur
            <a href="https://azure.microsoft.com/en-ca/overview/what-is-azure/" target="_blank">Azure</a>.
        </p>

        <c:set var="sha" scope="page" value="${System.getenv('GITHUB_SHA')}"/>
        <c:if test="${sha != null}">
            <c:set var="shaUrl" scope="page" value="https://github.com/cds-snc/az-struts/commit/${sha}"/>
            <p>Dernière commit: <a href="<c:url value="${shaUrl}" />" target="_blank"><c:out value="${sha}"/></a></p>
        </c:if>

        <br />
        <p><a href="<s:url action='hello'/>">Bonjour!</a></p>

        <s:url action="hello" var="helloNancy">
          <s:param name="name">Nancy</s:param>
        </s:url>

        <p><a href="${helloNancy}">Bonjour Nancy!</a></p>

    </jsp:body>
</t:wrapper>
