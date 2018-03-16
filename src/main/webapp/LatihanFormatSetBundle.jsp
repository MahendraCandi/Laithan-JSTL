<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Fmt Set Bundle</title>
    </head>
    <body>
        <fmt:setBundle basename="com.mahendracandi.JSTL.Hitung.proporties"/>
        
        <fmt:message key="Satu"/><br>
        <fmt:message key="Dua"/><br>
        <fmt:message key="Tiga"/><br>
    </body>
</html>