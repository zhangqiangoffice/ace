<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>index page</title>
  </head>
  
  <body>
  <%
  Cookie[] cookies = request.getCookies();
  String user = "";
  String date = "";
  if (cookies != null) {
	  for(int i = 0; i < cookies.length; i++) {
		  if (cookies[i].getName().equals("mrCookie")) {
			  user = URLDecoder.decode(cookies[i].getValue().split("#")[0]);
			  date = cookies[i].getValue().split("#")[1];
		  }
	  } 
  }
  if ("".equals(user) && "".equals(date)) {
  %>
  游客您好，欢迎您的初次光临！
  <form action="deal.jsp" method="post">
    请输入姓名：<input name="user" type="text" value="">
    <input type="submit" value="确定">
  </form>
  <%
  } else {
  %>
  欢迎【<b><%=user %></b>】再次光临 <br>
  您注册的时间是：<%=date %>  
  <%
  }
  %>
  
  </body>
</html>
