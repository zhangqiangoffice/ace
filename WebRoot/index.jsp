<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
  </head>
  
  <body>
    <a href="first.action">第一个Struts2程序</a><br>
    <a href="userAction!add">添加用户</a><br>
    <a href="userAction!update">更新用户</a><br>
    
    <form action="greeting.action" method="post">
        请输入您的姓名<input type="text" name="username"/> 
        <input type="submit" value="提交"/>
    </form>
    <a href="testAction.action">Map 类型的 request、session、application</a>
    
  </body>
</html>
