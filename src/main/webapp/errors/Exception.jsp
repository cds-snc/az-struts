<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<t:wrapper>
    <jsp:attribute name="title">Exception — az struts</jsp:attribute>
    <jsp:body>

        <h1>L’application a rencontré un problème.</h1>

        <h4>Exception Name</h4>
        <p><s:property value="exception"/></p>
        <h4>Exception Details</h4>
        <p><s:property value="exceptionStack"/></p>

        <br />

        <p><a href="index.jsp">Retournez à la page d’accueil.</a></p>

    </jsp:body>
</t:wrapper>
