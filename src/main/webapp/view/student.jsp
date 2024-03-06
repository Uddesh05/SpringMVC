<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <body style="background-color:yellow;">
<h1><center>  student table records</center></h1>
<center>
<form action="save" method="post">
id<input type="text" name="id">
name<input type="text" name="name">
<input type="submit" value="save">
<input type="reset" value="reset">
</form>
<br>
<br>

</center>
<center>
<form action="update" method="post">
id<input type="text" name="id">
name<input type="text" name="name">
<input type="submit" value="update">
<input type="reset" value="reset">
</form>
<br>
<br>

</center>
<center>
<form action="delete" method="post">
id<input type="text" name="id">
<input type="submit" value="delete">
</form>
<br>
</center>
<center>
<a href="viewtable" target="_blank">Show tables records</a>
</center>
</body>
</html>

