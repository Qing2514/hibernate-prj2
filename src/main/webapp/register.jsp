<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
    <s:head theme="xhtml"/> <sx:head parseContent="true" extraLocales="UTF-8"/>
</head>
<body>
<s:form action="Userregister" method="post">
    <s:textfield name="loginUser.account" label="请输入账号"/>
    <s:password name="loginUser.password" label="请输入密码"/>
    <s:password name="loginUser.repassword" label="请确认密码"/>
    <s:textfield name="loginUser.name" label="请输入姓名"/>
    <s:radio name="loginUser.sex" list="#{'0':'男','1':'女'}" label="请输入性别"/>
    <sx:datetimepicker name="loginUser.birthday" displayFormat="yyyy-MM-dd" label="请输入生日"/>
    <s:select name="loginUser.contactInfo.address" label="请选择地址" list="#{'北京':'北京','上海':'上海' }" headerKey="" headerValue="">
        <s:optgroup label="河北" list="#{'BD':'保定','HS':'衡水','SJZ':'石家庄'}"/>
        <s:optgroup label="河南" list="#{'LY':'洛阳','KF':'开封','SQ':'商丘'}"/>
    </s:select>
    <s:textfield name="loginUser.contactInfo.phone" label="请输入电话"/>
    <s:textarea name="loginUser.contactInfo.email" label="请输入邮箱"/>
    <s:submit value="注册"/>
    <s:reset value="重置"/>
</s:form>
</body>
</html>