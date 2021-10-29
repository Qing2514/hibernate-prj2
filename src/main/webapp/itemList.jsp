<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2021/10/27
  Time: 18:59
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
<center>商品列表</center>
<%--<table border=1>--%>
<%--    <tr>--%>
<%--        <th>编号</th>--%>
<%--        <th>书名</th>--%>
<%--        <th>说明</th>--%>
<%--        <th>单价</th>--%>
<%--    </tr>--%>
<%--    <s:iterator value="items">--%>
<%--        <tr>--%>
<%--            <td><s:property value="itemID"/></td>--%>
<%--            <td><s:property value="title"/></td>--%>
<%--            <td><s:property value="description"/></td>--%>
<%--            <td><s:property value="cost"/></td>--%>
<%--        </tr>--%>
<%--    </s:iterator>--%>
<%--</table>--%>

<%--<table border=1>--%>
<%--    <tr>--%>
<%--        <th>书名</th>--%>
<%--    </tr>--%>
<%--    <s:iterator value="items" id="object">--%>
<%--        <tr>--%>
<%--            <td><s:property value="object"/></td>--%>
<%--        </tr>--%>
<%--    </s:iterator>--%>
<%--</table>--%>

<table border=1>
    <tr>
        <th>书名</th>
        <th>单价</th>
    </tr>
    <s:iterator value="items" id="object">
        <tr>
            <td><s:property value="#object[0]"/></td>
            <td><s:property value="#object[1]"/></td>
        </tr>
    </s:iterator>
</table>

</body>
</html>
