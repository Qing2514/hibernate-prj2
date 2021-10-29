<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2021/10/27
  Time: 12:42
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
    修改个人信息
    <s:form action="Userupdate" method="post">
        <s:hidden name="loginUser.customerId" value="%{#request.loginUser.customerId}"/>
        <s:textfield name="loginUser.account" label="用户名不能修改" value="%{#request.loginUser.account}" readonly="true"/>
        <s:textfield type="password" name="loginUser.password" label="修改密码" value="%{#request.loginUser.password}"/>
    <!-- 省略其它表单域 -->
        <s:submit value="修改"/>
    </s:form>
    <s:form action="Userdelete" method="post">
        <s:hidden name="loginUser.customerId" value="%{#request.loginUser.customerId}"/>
        <s:submit value="删除"/>
    </s:form>
    <a href="./findItems">查看商品信息</a>
</body>
</html>
