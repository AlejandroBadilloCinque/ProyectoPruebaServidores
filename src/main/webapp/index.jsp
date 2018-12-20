<%-- 
    Document   : index
    Created on : 18-dic-2018, 9:56:52
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta base datos de peliculas jsp</h1>
    <c:if test="${!empty param.sentencia}">
        <jsp:include page="conexionBBDD"/>
        <h2>Resultado</h2>
        <c:if test="${!empty requestScope.rRegModificados}">
            <c:out value="${nRegModig}"/>
        </c:if>
        
        <c:forEach var="reg" items="${requestScope.listaReg.rowsByIndex}">
            <c:forEach var="campo" items="${reg}">
                <c:out value="${campo}"/>
            </c:forEach>
            <br>
        </c:forEach>
        
    </c:if>
        <form>
            <input type="text" name="sentencia" size="25">
            <input type="submit">
            
        </form>
    </body>
</html>
