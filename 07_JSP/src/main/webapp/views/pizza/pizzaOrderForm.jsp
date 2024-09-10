<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>피자 주문 페이지</title>
</head>
<body>
	<h1>피자 주문</h1>

	<h2>오늘의 날짜</h2>

	<%
		// SimpleDateFormat : Date 타입값을 원하는 형식으로 출력
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyy년 MM월 dd일");
	%>

	<h4><%=sdf.format(today) %></h4>

	<!--
		주문자 정보, 주문 정보를 입력 받아서 서버에 결제요청 (Servlet에 전달)
		controller -> PizzaServlet.java
		응답을 위한 JSP 페이지 -> pizza / pizzaPayment.jsp
	-->

	<form action="/JSP/confirmPizza.do" method="get">
		<fieldset>
			<legend>주문자 정보</legend>

			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="userName" required></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone" required></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" required></td>
				</tr>
				<tr>
					<th>요청 메시지</th>
					<td><input type="text" name="message" required></td>
				</tr>
			</table>
		</fieldset>

		<br>

		<fieldset>
			<legend>주문 정보</legend>

			<table>
				<tr>
					<th>피자</th>
					<td>
						<select name="pizza">
							<option value="콤비네이션 피자"></option>
							<option value="포테이토 피자"></option>
							<option value="고구마 피자"></option>
							<option value="치즈 피자"></option>
							<option value="하와이안 피자"></option>
						</select>
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>