<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag Catch</title>
    </head>
    <body>
        <c:catch var="catchException">
            <%
                int x=5/0;
            %>
        </c:catch>
        <c:if test="${catchException != null}" >
            <p>
                Exception adalah ${catchException} <br>
                Berikut Exception ${catchException.message}
            </p>
        </c:if>
    </body>
</html>