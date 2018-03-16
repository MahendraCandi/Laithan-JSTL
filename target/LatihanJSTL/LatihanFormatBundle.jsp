<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Fmt Bundle</title>
    </head>
    <body>
        <h3>Tag Bundle</h3>
        <fmt:setLocale value="id_ID" />
        <fmt:bundle basename="com.mahendracandi.JSTL.Hitung.properties">
            <fmt:message key="Satu"/><br/>
            <fmt:message key="Dua"/><br/>
            <fmt:message key="Tiga"/><br/>
        </fmt:bundle>
        <fmt:setLocale value="ar-AE" />
        <fmt:bundle basename="com.mahendracandi.JSTL.Hitung.properties">
            <fmt:message key="Satu"/><br/>
            <fmt:message key="Dua"/><br/>
            <fmt:message key="Tiga"/><br/>
        </fmt:bundle>
    </body>
</html>