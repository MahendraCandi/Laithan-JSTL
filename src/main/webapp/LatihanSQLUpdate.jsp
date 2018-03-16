<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Latihan SQL Update</title>
    </head>
    <body>
        <sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost/dbtoko"
                           user="root" password="admin"/>
        
        <sql:update var="ins" dataSource="${conn}">
            INSERT INTO Baju VALUES ('AA04', 'Reebook', 'l');
        </sql:update>
            
        <sql:query  var="result" dataSource="${conn}">
            SELECT * FROM Baju
        </sql:query>
            <table border="1" width="50%">
                <tr>
                    <th>Kode Baju</th>
                    <th>Merk Baju</th>
                    <th>Ukuran</th>
                </tr>
                <cforEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.KodeBaju}"/></td>
                        <td><c:out value="${row.MerkBaju}"/></td>
                        <td><c:out value="${row.Ukuran}"/></td>
                    </tr>
                </cforeach>
            </table>
    </body>
</html>

