<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag Tokens</title>
    </head>
    <body>
        <c:forTokens items="Satu,Dua,Tiga,Empat" delims="," var="hitung">
            <c:out value="${hitung}"/>
        </c:forTokens>
    </body>
</html>