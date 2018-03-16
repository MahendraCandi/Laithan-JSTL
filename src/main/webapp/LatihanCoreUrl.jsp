<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag URL</title>
    </head>
    <body>
        <c:url var="myurl" value="/LatihanCoreOut.jsp" scope="session" />
        ${sessionScope.myurl}
    </body>
</html>