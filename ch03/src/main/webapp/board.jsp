<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
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
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String writer= request.getParameter("writer");
	String content=request.getParameter("content");
	Date date = new Date();
	//====================================================
	//==================	파일저장 =====================
	//====================================================
	long fileName = date.getTime();
	// getRealPath --> Tomcat Metadata  File 저장
	String real = application.getRealPath("/WEB-INF/out/"+fileName+".txt");
	System.out.println(real);
	//File 저장 할 수 있는 객체
	FileWriter fw = new FileWriter(real);
	//File 내용
	String msg = "제목 : " + title + "\r\n";
	msg += "작성자 : " + writer + "\r\n";
	msg += "내용 : " + content + "\r\n";
	fw.write(msg);
	fw.close();
	
	//====================================================
	//==================	화면출력 =====================
	//====================================================

//	out은 내장변수로 바로 print사용 가능
	out.println("제목 : "+title+"<br>");
	out.println("작성자 : "+writer+"<br>");
	out.println("내용 : "+content+"<br>");
%>
제목 	: <%=title %><br>
작성자 	: <%=writer %><br>
내용	: <%=content %><br>
</body>
</html>