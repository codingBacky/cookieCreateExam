<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="kr.co.backy.util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키를 보는 다양한 방법 -> 보기 위해서는 무조건 CookieBox 객체를 생성해야함</h1>
	<p>특정 쿠키의 내용을 보기</p>
<%
	CookieBox cb = new CookieBox(request);
	if( cb.exists("newcookie") ){
		out.println("<p>" + cb.getValue("newCookie") + "</p>");
	}
%>

	<p>특정 전체 목록과 내용(값)을 보기</p>
<%
	CookieBox cb2 = new CookieBox(request);
//SET방식
//	Iterator<String> iter = cb2.getCookieNames().iterator(); //set방식이라 하나씩 넣을수 없으니 iterator로 변형해준다.
//	while( iter.hasNext() ){
//		String cookieName = iter.next();
//		String cookieValue = cb2.getValue(cookieName);//쿠키이름을 주면 값을 가져옴
	List<String> nameList = cb2.getCookieNames();
	for(String cookieName : nameList)
	out.println("<li>"+ cookieName + ":" + cb2.getValue(cookieName) + "</li>");
%>
	<%-- <li> <%= cookieName  %>: <%= cb2.getValue(cookieName) %> </li> for문 {}안에 넣어줘야함--%>




</body>
</html>