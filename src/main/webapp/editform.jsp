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
<tr><td><h3 style="padding-right: 20px">🐻 Name:</h3></td><td><input type="text" name="name" style="height: 30px; padding-left: 10px" value="<%= u.getName()%>"/></td></tr>
<tr><td><h3 style="padding-right: 20px">🐻 Age:</h3></td><td><input type="text" name="age" style="height: 30px; padding-left: 10px" value="<%= u.getAge()%>"/></td></tr>
<tr><td><h3 style="padding-right: 20px">🐻 School:</h3></td><td><input type="text" name="school" style="height: 30px; padding-left: 10px" value="<%= u.getSchool()%>"/></td></tr>
<tr><td><h3 style="padding-right: 20px">🐻 Major:</h3></td><td><input type="text" name="major" style="height: 30px; padding-left: 10px" value="<%= u.getMajor()%>" /></td></tr>
<tr><td><h3 style="padding-right: 20px">🐻 Gender:</h3></td><td><input type="text" name="gender" style="height: 30px; padding-left: 10px" value="<%= u.getGender()%>" /></td></tr>
<tr><td colspan="2" style="height: 50px;"><input type="submit" value="수정하기" style="width: 80px; height: 40px; background-color: bisque"/>
<input type="button" style="width: 80px; height: 40px; background-color: lightgray" value="취소" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>