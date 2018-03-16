<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.util.Date,java.util.TimeZone"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Fmt Timezone</title>
    </head>
    <body>
        <c:set var="tgl" value="<%=new Date()%>"/>
        <table border="1" width="100%">
            <tbody>
                <tr>
                    <td width="100%" colspan="2" bgcolor="#0000FF">
                        <p align="center">
                            <b>
                                <font color="#FFFFFF" size="4">
                                Formating:
                                <fmt:formatDate value="${tgl}" type="both" timeStyle="long" dateStyle="long"/>
                                </font>
                            </b>
                        </p>
                    </td>
                </tr>
                
                <c:forEach var="zone" items="<%=TimeZone.getAvailableIDs()%>">
                    <tr>
                        <td width="51%">
                            <c:out value="${zone}"/>
                        </td>
                        <td width="49%">
                            <fmt:timeZone value="${zone}">
                                <fmt:formatDate value="${tgl}" timeZone="${zn}" type="BOTH"/>
                            </fmt:timeZone>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
