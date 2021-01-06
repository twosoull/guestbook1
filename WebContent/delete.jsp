<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.guestdao.GuestbookDao" %>
<%@ page import = "com.javaex.guestvo.GuestVo" %>
<%
	request.setCharacterEncoding("UTF-8");
	//파라미터 받기
	String password = request.getParameter("password");
	int no = Integer.parseInt(request.getParameter("no"));
	
	//다오 불러오기
	GuestbookDao guestDao = new GuestbookDao();
	//딜리트 객체
	GuestVo guestVo = new GuestVo(no,password);
	
	//확인객체
	GuestVo guestVoPassw = guestDao.checkPassword(no);//Vo객체 리턴
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(password.equals(guestVoPassw.getPassword())){ 
	//파라미터와 no를 이용해 받은 객체의 패스워드 일치하면 삭제
	guestDao.Delete(guestVo);
	response.sendRedirect("./addList.jsp");//리스트페이지이동
	}else{		
%>
	<h3>잘못 입력하셨습니다</h3>
	<a href="./deleteForm.jsp?no=<%=no%>">다시 입력하기</a>
	<a href="./addList.jsp">리스트로 돌아가기</a>
<%}//같지않으면 선택 %>
	
</body>
</html>