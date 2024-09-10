package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 *	Servlet implementation class PizzaServlet 
 */
public class PizzaServlet {
	private static final long seriaVersionUID = 1L;
	
	/*
	 * @see HttpServlet#HttpServlet()
	 */
	public PizzaServlet() {
		super();
	}
	
	/*
	 * @see HttpServlet#doGet(HttpServletRequest, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1) 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		
		// 2) 요청시 전달값 추출, 데이터 가공처리 -> 변수나 객체에 넘겨받은 값을 기록한다
		String name = request.getParameter("userName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String message = request.getParameter("message");
		
		String pizza = request.getParameter("pizza");
		String[] toppings = request.getParameterValues("topping");
		String[] side = request.getParameterValues("side");
		String payment = request.getParameter("payment");
		
		// 3) 요청처리(DB애서 sql문 실행 > service > dao)
		int price = 0;
		
		switch(pizza) {
		case "콤비네이션 피자" :
		case "치즈 피자" :
			price += 5000;
			break;
		case "고구마 피자" :
		case "포테이토 피자" :
			price += 6000;
			break;
		default :
			price += 7000;
			break;
		}
		
		if(toppings != null) {
			for(String topping : toppings) {
				switch(topping) {
				case "고구마무스" :
					price += 1500;
					break;
				case "치즈크러스트" :
				case "베이컨" :
					price += 2000;
				default :
					price += 2500;
					break;
				}
			}
		}
		
		if(side != null) {
			for(String s : side) {
				switch(s) {
				case "콜라" :
				case "사이다" :
				case "환타" :
					price += 3000;
					break;
				case "핫소스" :
					price += 500;
				default :
					price += 300;
				}
			}
		}
		
		// 요청 처리 후 사용자가 보게 될 응답 페이지를 만들어서 넘겨주기
		// 응답페이지(jsp)를 선택해서 포워딩
		// 단, 응답 페이지에 필요한 데이터가 없다면 담아서 포워딩 할 것
		request.setAttribute("name", name);
		request.setAttribute("phone", phone);
		request.setAttribute("address", address);
		request.setAttribute("message", message);
		
		request.setAttribute("pizza", pizza);
		request.setAttribute("toppings", toppings);
		request.setAttribute("side", side);
		request.setAttribute("payment", payment);
		request.setAttribute("price", price);
		
		// 응답할 뷰 선택
		RequestDispatcher view = request.getRequestDispatcher("views/pizza/pizzaPayment.jsp");
		
		// 선택한 뷰가 사용자에게 보여지도록 포워딩
		view.forward(request, response);
	}
	
	/*
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
