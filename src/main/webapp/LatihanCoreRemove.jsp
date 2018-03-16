<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan tag Remove</title>
    </head>
    <body>
        <c:set var="nama" value="Netbeans"/>
        <p>Sebelum remove, value: <c:out value="${nama}" /></p>
        <c:remove var="nama"/>
        <p>Sesudah remove, value: <c:out value="${nama}" /></p>
    </body>
</html>