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
	String[] col = {"red","orange","yellow","green","blue","navy","violet","black"};
	//n은 8 미만의 숫자
	int n = (int)(Math.random()*8);
	//color1.jsp gugu1.jsp response.jsp
	String pgm = request.getParameter("pgm") + ".jsp";
	// 1. form 없이 이동 Page를 지정하는 객체 선언 (html의 form문 같은 역할... form으로 쓸 필요가 없는데 page이동할 때 쓴다?)
	RequestDispatcher rd = request.getRequestDispatcher(pgm);
	if (pgm.equals("color1.jsp")){
		//변수선언
		request.setAttribute("color", col[n]); 
		//form문안의 변수처럼 rd를통해 페이지 이동을 할 때 파라미터를 전달 해 주는 역할 name=color value=col[n]
		// rd객체에 포함된 parameter color를 받기 위해! 해당 jsp에서 rd로 연결받은 변수를 호출!
		//	rd = request.getRequestDispatcher("color1.jsp");로 받는다.
	} else if(pgm.equals("gugu1.jsp")){
		//2단~9단
		request.setAttribute("num", n+2);
	// rd = request.getRequesetDispatcher("gugu1.jsp");
	} else if(pgm.equals("response.jsp")){
		//예비
	}
	// 2. 이동 Page를 지정하는 객체 선언을 실제적으로 이동
	rd.forward(request, response);
	//rd로 선언한 페이지로 이동하고 , 이전에 선언 해 둔 request 및 response객체를 함께가져간다.
%>
</body>
</html>