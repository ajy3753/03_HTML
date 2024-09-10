<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>JSP include 지시어</title>
</head>
<body>
   <h1>include 지시어</h1>

   <div style="border: 1px solid darkcyan;">
      <%@ include file="01_ScriptingElement.jsp" %>
   </div>

   <p>
      포함한 JSP 파일에 선언되어있는 변수를 가져다 사용 가능하다. <br>
      1부터 100까지의 총 합계 : <%=sum%>
   </p>
</body>
</html>