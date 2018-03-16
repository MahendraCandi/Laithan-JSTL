<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Tag Number</title>
    </head>
    <body>
        <h3>Number Format</h3>
        <c:set var="balance" value="120000.2309" />
        <p>Formatted Numbers (1): <fmt:formatNumber type="currency" value="${balance}" /></p>
        <p>Formatted Numbers (2): <fmt:formatNumber type="number" maxIntegerDigits="3" value="${balance}" /></p>
        <p>Formatted Numbers (3): <fmt:formatNumber type="number" maxFractionDigits="3" value="${balance}" /></p>
        <p>Formatted Numbers (4): <fmt:formatNumber type="number" groupingUsed="false" value="${balance}" /></p>
        <p>Formatted Numbers (5): <fmt:formatNumber type="percent" maxIntegerDigits="5" value="${balance}" /></p>
        <p>Formatted Numbers (6): <fmt:formatNumber type="percent" minFractionDigits="10" value="${balance}" /></p>
        <p>Formatted Numbers (7): <fmt:formatNumber type="percent" maxIntegerDigits="3" value="${balance}" /></p>
        <p>Formatted Numbers (8): <fmt:formatNumber type="number" pattern="###.###E0" value="${balance}" /></p>
        <p>
            Curreny in Indonesia :
            <fmt:setLocale value="id_ID"/>
            <fmt:formatNumber value="${balance}" type="currency"/>
        </p>
    </body>
</html>
