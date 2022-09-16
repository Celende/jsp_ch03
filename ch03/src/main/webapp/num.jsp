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
	int num = Integer.parseInt(request.getParameter("num"));
	int fac = 0;
	for(int i=1; i<=num; i++){
		fac += i;
	}
	
	
%>
</body>
<h1>1부터 <%=num %>까지의 합</h1>
<%=fac %>
</html>