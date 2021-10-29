<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2021/10/27
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:property value="#request.tip"/><p>
    <s:form action="Userlogin" method="post">
        <s:textfield name="loginUser.account" label="请输入用户名"/>
        <s:password name="loginUser.password" label="请输入密码"/>
        <s:submit value="登录"/>
    </s:form>
</body>
</html>
