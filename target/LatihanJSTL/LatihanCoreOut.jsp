<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Tag Example</title>
</head>
<body>
    <c:out value="${abcd}">Satu Dua Tiga</c:out>
    <c:out value="${'<tag>'}" />
    <c:out value="${'<br>'}" />
    <c:out value="${1234}" />
</body>
</html>