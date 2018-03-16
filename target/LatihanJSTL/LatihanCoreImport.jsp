<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag Import</title>
    </head>
    <body>
        <c:import var="data" url="https://www.google.co.id/" />
        <c:out value="${data}" />
    </body>
</html>