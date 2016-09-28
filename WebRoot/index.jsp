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
    <h2>用户注册</h2>
    <s:form action="registerUserAction" method="post">
        <s:textfield name="name" label="用户名" required="true" requiredposition="left"></s:textfield>
        <s:password name="password" label="密码" required="true" requiredposition="left"></s:password>
        <s:radio name="sex" list="#{1:'男',0:'女' }" label="性别 " required="true" requiredposition="left"></s:radio>
        <s:select list="{'请选择省份','吉林','广东','山东','河南'}" name="province" label="省"></s:select>
        <s:checkboxlist list="{'足球','羽毛球','乒乓球','篮球'}" name="hobby" label="爱好"></s:checkboxlist>
        <s:textarea name="description" cols="30" rows="5" label="描述"></s:textarea>
        <s:submit value="注册"></s:submit>
        <s:reset value="重置"></s:reset>
    </s:form>
    
  </body>
</html>
