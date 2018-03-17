<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="java.util.Date, java.util.Calendar, java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
    <head>
        <title> Latihan SQL Date Param</title>
    </head>
    <body>
        <sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/dbtoko"
                           user="root" password="admin"/>
        <sql:query var="q" dataSource="${conn}" maxRows="1" >
            SELECT * FROM Tgl ORDER BY Tanggal DESC;
        </sql:query>
        <c:forEach var="data" items="${q.rows}">
            <c:set var="z" value="${data.Tanggal}"/>
        </c:forEach>
        
        <%
            String q=pageContext.getAttribute("z").toString();
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                Date x=sdf.parse(q);
                Calendar cal=Calendar.getInstance();
                cal.setTime(x);
                cal.add(Calendar.DAY_OF_WEEK, 1);
                Date tgl=cal.getTime();
        %>
        <sql:update var="x" dataSource="${conn}">
            INSERT INTO Tgl VALUES(?);
            <sql:dateParam value="<%=tgl%>" type="DATE"/>
        </sql:update>
        <sql:query var="result" dataSource="${conn}">
            SELECT * FROM Tgl;
        </sql:query>
            <table>
                <tr>
                    <th>Tanggal</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.Tanggal}"/></td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>

