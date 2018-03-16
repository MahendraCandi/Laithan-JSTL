<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Fmt Date</title>
    </head>
    <body>
        <h3>Format Date</h3>
        <fmt:setLocale value="id_ID" />
        <c:set var="tgl" value="<%=new Date()%>"/>
        <p>Format Date (1) : <fmt:formatDate type="time" value="${tgl}" /></p>
        <p>Format Date (2) : <fmt:formatDate type="date" value="${tgl}" /></p>
        <p>Format Date (3) : <fmt:formatDate type="both" value="${tgl}" /></p>
        <p>Format Date (4) : <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${tgl}" /></p>
        <p>Format Date (5) : <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${tgl}" /></p>
        <p>Format Date (6) : <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${tgl}" /></p>
        <p>Format Date (7) : <fmt:formatDate pattern="dd-MM-yyyy"  value="${tgl}" /></p>
    </body>
</html>