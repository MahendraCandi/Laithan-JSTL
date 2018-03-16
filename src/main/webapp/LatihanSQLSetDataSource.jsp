<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan SQL serDataSource</title>
    </head>
    <body>
        <c:catch var="ex">
            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/dbtoko"
                           user="root" password="admin"/>
        </c:catch>
        <c:if test="${ex!=null}">
            <p >
                The Exception : ${ex}
                <br><br>
                ${ex.message}
            </p>
        </c:if>
        <c:choose>
            <c:when test="${ex!=null}">
                <p >
                    The Exception : ${ex}
                    <br><br>
                    ${ex.message}
                </p>
            </c:when>
            <c:otherwise>
                <p>
                    Sukses ....
                </p>
            </c:otherwise>
        </c:choose>
    </body>
</html>