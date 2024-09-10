<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP 스크립트 원소</title>
</head>
<body>
	<h1>스크립팅 원소</h1>
	
	<!-- HTML 주석 : 개발자도구 탭에 노출 -->
	<%-- JSP 주석 : 개발자도구 탭에 노출되지 않음 --%>
	
	<%
		// 스크립틀릿 : 해당 영역에 일반적인 자바 코드를 작성 (변수 선언 및 초기화, 제어문 등)
		int sum = 0;
		for(int i = 1; i <= 100; i++) {
			sum += i;
		}
	%>
	
	<p>
		화면으로 출력하고자 한다면 <br>
		- 스크립틀릿 이용해서 출력 : <% out.println(sum); %> <br>
		- 표현식(출력식) 이용해서 출력 : <%=sum%>
	</p>
	
	<%
		String[] nameArr = {"홍길동", "심청", "흥부"};
	%>
	
	<h5>배열의 길이 : <%=nameArr.length %></h5>
	<h5>배열에 담긴 값 : <%=String.join(",", nameArr) %></h5>
	
	<h4>반복문을 통해서 HTML 요소를 반복적으로 화면에 출력할 수 있다.</h4>
	
	<h5>for문 사용</h5>
	<ul>
		<%
			for(int i = 0; i < nameArr.length; i++) {
		%>
		<li><%=nameArr[i] %></li>
		<%
			}
		%>
	</ul>
	
	<h5>for each문 사용</h5>
	<ul>
		<%
			for(String name : nameArr) {
		%>
		<li><%=name %></li>
		<%
			}
		%>
	</ul>
	
</body>
</html>