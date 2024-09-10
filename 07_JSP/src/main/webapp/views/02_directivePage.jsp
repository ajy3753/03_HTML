<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- errorpage = "error500.jsp" -->
<%@ page import="java.util.ArrayList, java.util.Date" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>JSP page 지시어</title>
</head>
<body>
   <h1>page 지시어</h1>
   
   <%
      ArrayList<String> list = new ArrayList<>();
      list.add("Servlet");
      list.add("JSP");

      Date today = new Date();
   %>

   0번째 인덱스 : <%=list.get(0)%> <br>
   현재 날짜 및 시간 : <%=today%>
</body>
</html>