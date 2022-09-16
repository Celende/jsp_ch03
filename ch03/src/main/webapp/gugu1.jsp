<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num = (int)request.getAttribute("num");
	out.println("<h1>구구단 "+num+"단</h1><br>");
	for(int i=1; i<=9; i++){
		int x = num*i;
		out.println(num+" * "+i+" = "+x+"<br>");
	}

%>
</body>
</html>