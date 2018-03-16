<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
    <head>
        <title>Latihan Tag Choose</title>
    </head>
    <body>
        <c:set var="gaji" value="" />
        <p>Your salary is <c:out value="${gaji}"/></p>
        <c:choose>
            <c:when test="${gaji <= 2000}">
                Your salary is low.
            </c:when>
            <c:when test="${gaji >=2000}">
                Nice salary dude.
            </c:when>
            <c:otherwise>
                Your salary very fuck up sir...
            </c:otherwise>
        </c:choose>
    </body>
</html>