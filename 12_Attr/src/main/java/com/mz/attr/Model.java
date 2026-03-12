package com.mz.attr;

import javax.servlet.http.HttpServletRequest;

import com.sun.net.httpserver.Request;

public class Model {

	public static void getExchange(HttpServletRequest request) {
		// 1. 값

		int price = Integer.parseInt(request.getParameter("p"));
		int money = Integer.parseInt(request.getParameter("m"));

		// 1000 5000 4000
		int ex = money - price;
	

		String say = "잔돈 드리겠습니다.";
		if (price == money) {
			say = "감사합니다";
		} else if (price > money) {
			say = "돈이 모자라요..";
			ex = price - money; 
		}

		// 결과 페이지에서 뭘 쓸지?
		// price, money, ex, say
//		request.setAttribute("price", price);
//		request.setAttribute("money", money);
//		request.setAttribute("ex", ex);
//		request.setAttribute("say", say);

		// 위에 처럼 필요한 것들을 따로 실어서 보내도 되는데,
		// 그걸 한 곳에 뭉쳐서 보내자 (객체)

		Result r = new Result(price, money, ex, say);
		request.setAttribute("rr", r);

	}

	public static void makeValue(HttpServletRequest request) {
		int asd = Integer.parseInt(request.getParameter("asd"));
		asd = asd *-1;
		request.setAttribute("asdasd", asd);

	}

}
