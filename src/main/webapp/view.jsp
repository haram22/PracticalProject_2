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
    <title>🐻 상세보기 🐻</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>🐻 상세보기 🐻</h1>
<table>
    <tr><td><h2>📌 Name: <%= u.getName()%></h2></td></tr>
    <tr><td><h2>📌 Age: <%= u.getAge()%></h2></td></tr>
    <tr><td><h2>📌 School: <%= u.getSchool()%></h2></td></tr>
    <tr><td><h2>📌 Major: <%= u.getMajor()%></h2></td></tr>
    <tr><td><h2>📌 Gender: <%= u.getGender()%></h2></td></tr>
</table>

</body>
</html>