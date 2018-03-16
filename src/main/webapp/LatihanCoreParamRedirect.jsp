<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag Param Redirect</title>
    </head>
    <body>
        <c:redirect url="/LatihanCoreParamDisplay.jsp">
            <c:param name="ID" value="1234"/>
            <c:param name="user" value="Ini User"/>
        </c:redirect>
    </body>
</html>