<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add</title>
</head>
<body>

<h1>친구 추가하기</h1>
<form action="addpost.jsp" method="post">
<table>
<tr><td><h2>🐻 name:</h2></td><td><input type="text" name="name"/></td></tr>
<tr><td><h2>🐻 age:</h2></td><td><input type="text" name="age"/></td></tr>
<tr><td><h2>🐻 school:</h2></td><td><input type="text" name="school"/></td></tr>
<tr><td><h2>🐻 major:</h2></td><td><input type="text" name="major"/></td></tr>
<tr><td><h2>🐻 gender:</h2></td><td><input type="text" name="gender"/></td></tr>
<tr><td><a href="posts.jsp" style="font-size: 15px">모든 기록 보기</a></td><td align="right"><input style="background-color: pink; height: 40px; width: 100px;" type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>