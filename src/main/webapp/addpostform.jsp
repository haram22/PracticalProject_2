<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">
<table>
<tr><td>name:</td><td><input type="text" name="name"/></td></tr>
<tr><td>age:</td><td><input type="text" name="age"/></td></tr>
<tr><td>school:</td><td><input type="text" name="school"/></td></tr>
<tr><td>major:</td><td><input type="text" name="major"/></td></tr>
<tr><td>gender:</td><td><input type="text" name="gender"/></td></tr>
<tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>