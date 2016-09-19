<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>deal page</title>
</head>
<body>
<%
request.setCharacterEncoding("GB18030");
String user = URLEncoder.encode(request.getParameter("user"), "utf-8");
Cookie cookie = new Cookie("mrCookie", user + "#" + new java.util.Date().toLocaleString());

cookie.setMaxAge(60);
response.addCookie(cookie);
%>
<script>window.location.href="index.jsp";</script>
</body>
</html>
