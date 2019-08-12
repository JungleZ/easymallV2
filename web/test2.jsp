<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 37213
  Date: 2019/4/10
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body{
            text-align: center;
        }
    </style>
    <title>Title</title>
</head>
<body>

<h3>c:forEach</h3>
<%
    //声明一个数组, 并将数组存入域中
    String[] names = {"王海涛","齐雷","陈子枢"};
    Map<String,String> map=new HashMap();
    map.put("kkk","kkk");
    map.put("bbb","bbb");
    map.put("ccc","ccc");
    request.setAttribute("map",map);
    request.setAttribute("name", names);
%>
<c:forEach items="${name}" var="names">
    ${names}
</c:forEach>
<br>
<c:forEach items="${map}" var="maps">

   ${maps.key}:${maps.value}
</c:forEach>
<h3>便利0-100</h3>
<c:forEach begin="0" end="100"  var="i" varStatus="status">
  <%--<c:if test="${i%2==0}">--%>
    <%--${i},--%>
<%--</c:if>--%>

    <%--varStatus:--%>
    <%--属性--%>
    <%--first:返回值时boolean且若时第一个就返回true--%>
    <%--last：返回值时boolean且若左后一个返回true--%>
    ${i}
    <c:if test="${!status.last}">
        ,
    </c:if>

</c:forEach>
<hr>
<h3>c:set标签</h3>
<%

    //声明一个数组, 并将数组存入域中

    request.setAttribute("kkkk", "张三");
%>
<hr>
<c:set var="kkkk" value="张三风" scope="request"/>
${kkkk}
123
<hr>
<h3>c:if标签</h3>
<c:if test="${kkkk.equals('张三风')}"><div><input id="password" type="password"></div></c:if>
</body>
</html>
