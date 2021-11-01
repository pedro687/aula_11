<%@ page import="com.spiet.aula_11.models.Data" %><%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 01/11/2021
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%
    Data data = new Data();

    Data agora = new Data();
    agora.setDay(24);
    agora.setMonth(05);
    agora.setYear(2021);

    Data myBirthday = new Data(24, 5, 2002);
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Data - Java OO</title>
</head>
<body>
<%@include file="WEB-INF/jspf/header.jspf" %>
<h2>CLASSE DATA</h2>
<h3>Data padrão da classe</h3>
<div><%= data.getDay() %>/<%= data.getMonth() %>/<%= data.getYear() %></div>

<h3>Data de hoje:</h3>
<div><%= agora.getData() %></div>
<h3>Aniversário do Pedro:</h3>
<div><%= myBirthday.getData() %></div>
</body>
</html>

