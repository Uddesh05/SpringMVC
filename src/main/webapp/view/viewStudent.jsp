<%@page import="com.TKAShree.SpringBoot.MVC.batch138.Student"%>
<%@page import="java.util.List"%>
<html>
<style>
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

th, td {
	text-align: left;
	padding: 16px;
}
tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<center>
		<h1 style="background-color: rgb(255, 99, 71);">Student Table</h1>
	</center>
	<table>
		<tr>
			<th>id</th>
			<th>name</th>
	</tr>
		<%
	List<Student> list = (List<Student>) request.getAttribute("al");
		%>

		<%
		for (Student c1 : list) {
		%>
		<tr>
			<td>
				<%
				out.print(c1.getId());
				%>
			</td>
			<td>
				<%
				out.print(c1.getName());
				%>
			</td>
		</tr>

		<%
		}
		%>
</body>
</html>

<a href="viewtable" target="_blank">View Table</a>

