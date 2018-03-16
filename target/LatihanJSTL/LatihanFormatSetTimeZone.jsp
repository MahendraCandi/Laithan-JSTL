<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Fmt Set TimeZone</title>
    </head>
    <body>
        <c:set var="tgl" value="<%=new Date()%>"/>
        <p>
            Waktu sekarang : 
            <fmt:formatDate value="${tgl}" type="BOTH" dateStyle="long" timeStyle="long"/>
        </p>
        <p>
            Ubah ke Time Zone GMT-8
            <fmt:setTimeZone value="GMT-8" />
            <br>
            Menjadi :
            <fmt:formatDate value="${tgl}" type="BOTH" dateStyle="long" timeStyle="long"/>
        </p>
        <p>
            Ubah ke Time Zone Asia/Jayapura
            <fmt:setTimeZone value="Asia/Jayapura" />
            <br>
            Menjadi :
            <fmt:formatDate value="${tgl}" type="BOTH" dateStyle="long" timeStyle="long"/>
        </p>
    </body>
</html>