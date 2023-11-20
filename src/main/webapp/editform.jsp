<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Age:</td><td><input type="text" name="age" value="<%= u.getAge()%>"/></td></tr>
<tr><td>School:</td><td><input type="text" name="school" value="<%= u.getSchool()%>"/></td></tr>
<tr><td>Major:</td><td><input type="text" name="major" value="<%= u.getMajor()%>" /></td></tr>
<tr><td>Gender:</td><td><input type="text" name="gender" value="<%= u.getGender()%>" /></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>