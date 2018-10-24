<%@page contentType="text/html;UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<c:forEach items="${requestScope.admins}" var="admin">
    ${admin.name}
</c:forEach>
<h1>hh</h1>
</body>

</html>
