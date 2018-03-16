<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <p>
            User Id adalah <c:out value="${param.ID}"/>
            User Name adalah <c:out value="${param.user}"/>
        </p>
    </body>
</html>