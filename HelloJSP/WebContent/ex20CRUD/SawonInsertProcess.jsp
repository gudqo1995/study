<%@page import="telinfoDAO.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사원 추가</h1>
<%
	request.setCharacterEncoding("utf-8");
	TelInfoDAO tidao = new TelInfoDAO();
	
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String sDate = request.getParameter("sDate");
	
	boolean b1 = tidao.insert_nametel(id, name, tel, sDate);
	
	if(b1) //insert 성공시
		response.sendRedirect("SawonAllView.jsp");
	else { //insert 실패
%>
	<a href="SawonInsertForm.jsp">사원입력 에러 - 입력화면으로</a>
<%} %>
</body>
</html>