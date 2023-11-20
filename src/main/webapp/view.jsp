<%--
  Created by IntelliJ IDEA.
  User: ram
  Date: 2023/11/20
  Time: 6:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Form</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>View Form</h1>
<table>
    <tr><td>📌 Name: <%= u.getName()%></td></tr>
    <tr><td>📌 Age: <%= u.getAge()%></td></tr>
    <tr><td>📌 School: <%= u.getSchool()%></td></tr>
    <tr><td>📌 Major: <%= u.getMajor()%></td></tr>
    <tr><td>📌 Gender: <%= u.getGender()%></td></tr>
</table>

</body>
</html>