<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag Param & URL</title>
    </head>
    <body>
        <c:url value="LatihanCoreOut.jsp" var="contohURL">
            <c:param name="ID" value="123456789"/>
            <c:param name="user" value="Ini User"/>
        </c:url>
        <c:out value="${contohURL}"/>
    </body>
</html>
