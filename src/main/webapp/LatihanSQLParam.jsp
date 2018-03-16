<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Latihan SQL Param</title>
    </head>
    <body>
        <sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/dbtoko"
                           user="root" password="admin"/>
        
        <c:set var="x" value="AA03"/>
        <sql:update var="del" dataSource="${conn}">
            DELETE FROM Baju WHERE KodeBaju = ?
            <sql:param value="${x}"/>
        </sql:update>
        <sql:query var="result" dataSource="${conn}">
            SELECT * FROM Baju;
        </sql:query>
            <table>
                <tr>
                    <th>Kode Baju</th>
                    <th>Merk Baju</th>
                    <th>Ukuran</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.KodeBaju}"/></td>
                        <td><c:out value="${row.MerkBaju}"/></td>
                        <td><c:out value="${row.Ukuran}"/></td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>

