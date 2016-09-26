<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>MS</title>
</head>
<body>
    <%=request.getAttribute("info") %>
    <br>
    <%=session.getAttribute("info") %>
    <br>
    <%=application.getAttribute("info") %>
</body>
</html>
