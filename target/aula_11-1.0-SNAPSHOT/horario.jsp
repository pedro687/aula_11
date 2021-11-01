<%@ page import="com.spiet.aula_11.models.Horario" %><%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 01/11/2021
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    Horario horaAtual = new Horario(13,57,30);
    Horario horaIntervalo = new Horario(15,40,10);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@include file="WEB-INF/jspf/header.jspf"%>
<h2>HORÁRIO</h2>

<h3>Horário Atual:</h3>
<div><%=horaAtual.getHorario()%></div>

<h3>Horário do Intervalo:</h3>
<div><%=horaIntervalo.getHorario()%></div>

</body>
</html>
