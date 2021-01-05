<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.guestdao.GuestbookDao" %>
<%@ page import = "com.javaex.guestvo.GuestVo" %>
<%
	
	String password = request.getParameter("password");
	int no = Integer.parseInt(request.getParameter("no"));
	GuestbookDao guestDao = new GuestbookDao();
	GuestVo guestVo = new GuestVo(no,password);
	guestDao.Delete(guestVo);
	
	response.sendRedirect("./addList.jsp");
%>
