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
<style>
body {
    background-color: skyblue;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
}

form {
    text-align: center;
    margin-bottom: 20px;
}

input[type="text"], input[type="submit"], input[type="reset"] {
    margin: 5px;
    padding: 5px;
    width: 200px;
}

input[type="submit"], input[type="reset"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}

input[type="submit"]:hover, input[type="reset"]:hover {
    background-color: #45a049;
}

a {
    display: block;
    text-align: center;
    text-decoration: none;
    color: blue;
    margin-top: 20px;
}

a:hover {
    text-decoration: underline;
}

</style>
