<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>MS</title>
</head>
<body>
    <h2>用户注册信息</h2>
    <ul>
        <li>用户名：<s:property value="name" /></li>
        <li>密码：<s:property value="password" /></li>
        <li>性别：<s:if test="sex==0">女</s:if><s:else>男</s:else></li>
        <li>省份：<s:property value="province" /></li>
        <li>爱好：<s:property value="hobby" /></li>
        <li>描述：<s:property value="description" /></li>
    </ul>
</body>
</html>
