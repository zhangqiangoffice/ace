<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>MS</title>
</head>
<body>
    <s:form action="loginUserAction" method="post">
        <s:textfield name="username" label="用户名" required="true"></s:textfield>
        <s:password name="password" label="密码 " required="true"></s:password>
        <s:submit key="submit" value="登录"></s:submit>
    </s:form>
</body>
</html>
