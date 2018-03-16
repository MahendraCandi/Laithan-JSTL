<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Fmt ParseNumber</title>
    </head>
    <body>
        <c:set var="balance" value="1250003.350"/>
        <p>Angka balance : <c:out value="${balance}"/></p>
        <fmt:parseNumber type="number" var="i" value="${balance}" />
        <p>Parsed Number (1) : <c:out value="${i}"/></p>
        <fmt:parseNumber type="number" var="i" integerOnly="true" value="${balance}"/>
        <p>Parsed Number (2) : <c:out value="${i}"/></p>
    </body>
</html>