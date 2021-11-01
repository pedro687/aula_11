<%@ page import="com.spiet.aula_11.models.Contact" %>
<%@ page import="com.spiet.aula_11.models.Data" %>
<%@ page import="com.spiet.aula_11.models.Base" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String error = null;

    try{
        if(request.getParameter("form-add") != null){
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");

            int dia = Integer.parseInt(request.getParameter("nascimento.dia"));
            int mes = Integer.parseInt(request.getParameter("nascimento.mes"));
            int ano = Integer.parseInt(request.getParameter("nascimento.ano"));

            Contact c = new Contact(nome, telefone,new Data(dia,mes,ano));
            Base.getContactList().add(c);

            response.sendRedirect(request.getRequestURI());


        }else if(request.getParameter("form-remove") != null){
            int index = Integer.parseInt(request.getParameter("index"));
            Base.getContactList().remove(index);
            response.sendRedirect(request.getRequestURI());
        }
    }catch(Exception e){
        error = e.getMessage();
    }

%>
<html>
<head>
    <title>Contatos</title>
</head>
<body>
<%@include file="WEB-INF/jspf/header.jspf"%>
<h2>CONTATOS</h2>
<%if(error !=null){%>
<div style="color: red"><%=error%></div>
<%}%>
<form>
    <fieldset>
        <legend>Novo contato</legend>
        Nome:<br/><input type="text" name="nome"/><br/>
        Telefone:<br/><input type="text" name="telefone"/><br/>
        Data de nascimento:<br/>
        <input type="number" step="1" name="nascimento.dia"/>/
        <input type="number" step="1" name="nascimento.mes"/>/
        <input type="number" step="1" name="nascimento.ano"/>
        <br/><br/>
        <input type="submit" name="form-add"/>
    </fieldset>
</form>
<hr/>
<table border="1">
    <tr>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Nascimento</th>
        <th>Remoção</th>
    </tr>
    <%for(Contact c: Base.getContactList()){%>
    <tr>
        <td><%= c.getName() %></td>
        <td><%= c.getTelphone() %></td>
        <td><%= c.getNascimento().getData() %></td>
        <td>
            <form>
                <input type="submit" name="form-remove" value="Remover"/>
                <input type="hidden" name="index" value="<%= Base.getContactList().indexOf(c) %>"/>
            </form>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>