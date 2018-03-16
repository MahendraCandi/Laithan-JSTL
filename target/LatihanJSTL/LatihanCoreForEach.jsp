<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag ForEach</title>
    </head>
    <body>
        <c:forEach var="i" begin="0" end="10" >
            <p>Hitung <c:out value="${i}"/></p>
        </c:forEach>
    </body>
</html>