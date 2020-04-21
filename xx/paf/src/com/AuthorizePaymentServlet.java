package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.paypal.base.rest.PayPalRESTException;

@WebServlet("/authorize_payment")
public class AuthorizePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AuthorizePaymentServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String product = request.getParameter("product");
		String total = request.getParameter("total");

		OrderDetail orderDetail = new OrderDetail(product, total);

		PaymentServices paymentServices = new PaymentServices();
		try {
			String approvalLink = paymentServices.authorizePayment(orderDetail);
			response.sendRedirect(approvalLink);
		} catch (PayPalRESTException e) {
			e.printStackTrace();
			request.setAttribute("errorMessage", "Invalid payment details");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}

	}

}
