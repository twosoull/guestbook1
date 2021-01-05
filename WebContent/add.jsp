<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.guestvo.GuestVo" %>
<%@ page import = "com.javaex.guestdao.GuestbookDao" %>
<%
		String name = request.getParameter("name");
		String passWord = request.getParameter("password");
		String content = request.getParameter("content");
		
		GuestVo guestVo = new GuestVo(name,passWord,content);
		GuestbookDao guestbookDao = new GuestbookDao();
		
		guestbookDao.Insert(guestVo);
		
		response.sendRedirect("./addList.jsp");
		
%>
