<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
--%>
<%
	   String sangpumCookValue = "";
   Cookie[] cookies = request.getCookies();
   
   if( cookies != null){
      for(Cookie cok : cookies){
         if( cok.getName().equals("sangpumInfo") ){
            sangpumCookValue = cok.getValue() ;
            System.out.println("** =>" + sangpumCookValue);
         }
      }
   }
   //아래 if 구문은 다른 형태로 작성되어야 할 수도 있다. 전략에 따라서 잘 만들어야 한다.
   if( !sangpumCookValue.contains("1111")){
      sangpumCookValue = sangpumCookValue + "A" + "1111";
   }
   Cookie cookie = new Cookie ( "sangpumInfo" , sangpumCookValue ) ; 
   cookie.setPath("/");
   cookie.setMaxAge(60*60*3);//3시간 유지
   response.addCookie(cookie) ; 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품 상세정보 : 전자제품</h1>
</body>
</html>