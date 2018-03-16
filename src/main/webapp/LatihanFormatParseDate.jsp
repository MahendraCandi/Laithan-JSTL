<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Fmt Parse Date</title>
    </head>
    <body>
        <h3>Parse Date</h3>
        <fmt:setLocale value="id_ID"/>
        <c:set var="tgl" value="26-02-2018"/>
        <fmt:parseDate value="${tgl}" var="i" type="DATE" pattern="dd-MM-yyyy"/>
        <p>Variabel tanggal : ${tgl}</p>
        <p>Setelah di parse : ${i}</p>
        <fmt:parseDate value="${tgl}" var="i" type="DATE" dateStyle="short" pattern="dd-MM-yyyy "/>
        <p>Setelah di parse : ${i}</p>
        <fmt:parseDate value="${tgl}" var="i" type="DATE" dateStyle="medium" pattern="dd-MM-yyyy"/>
        <p>Setelah di parse : ${i}</p>
    </body>
</html>