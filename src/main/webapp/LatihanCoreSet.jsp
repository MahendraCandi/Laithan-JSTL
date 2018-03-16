<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Core Set</title>
    </head>
    <body>
        <% 
            int a=1; 
            String b="Apple";
            pageContext.setAttribute("a", a);
            pageContext.setAttribute("b", b);
        %>
        <c:set var="nama" value="Tom"/>
        <c:set var="gaji" value="4000000"/>
        <c:set var="alamat" value="Jalan Anuan No. 38"/>
        <c:set var="var1" value="${a}"/>
        <c:set var="var2" value="${b}"/>
        <c:out value="${nama}"/><br>
        <c:out value="${gaji}"/><br>
        <c:out value="${alamat}"/><br>
        <c:out value="${var1}"/><br>
        <c:out value="${var2}"/><br>
        
    </body>
</html>