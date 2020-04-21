package com;

import java.util.ArrayList;
import java.util.List;

import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import com.paypal.api.payments.Links;

public class PaymentServices {
	private static final String CLIENT_ID = "Ac1fDP4yVi6iPPU8hYi7sx_B7_sTJfOfdxR8u2Nv8_kwDLbOUTfT5t0nmjbAJYNyameGAbt8tihE-5xV";
	private static final String CLIENT_SECRET = "EEgpIPCTcQTc5wm2XYKimn27GxLuPwdGhdG7kwW61pIsv8fjl9_NHYF-VsC88FLmFgyWtA5B1DCJvReu";
	private static final String MODE = "sandbox";

	public String authorizePayment(OrderDetail orderDetail) throws PayPalRESTException {

		Payer payer = getPayerInformation();
		RedirectUrls redirectUrls = getRedirctUrls();
		List<Transaction> listTransaction = getTransactionInformation(orderDetail);

		Payment requestPayment = new Payment();
		//InputFields inputFields = new InputFields();
		//inputFields.setAddressOverride(1).setNoShipping(1);

		requestPayment.setTransactions(listTransaction).setRedirectUrls(redirectUrls).setPayer(payer)
				.setIntent("sale");

		APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
		Payment approvePayment = requestPayment.create(apiContext);
		return getApprovalLink(approvePayment);
	}

	private String getApprovalLink(Payment approvePayment) {
		List<Links> links = approvePayment.getLinks();
		String approvalLink = null;

		for (Links link : links) {
			if (link.getRel().equalsIgnoreCase("approval_url")) {
				approvalLink = link.getHref();
			}
		}

		return approvalLink;
	}

	private List<Transaction> getTransactionInformation(OrderDetail orderDetail) {
		Amount amount = new Amount();
		amount.setCurrency("USD");
		amount.setTotal(orderDetail.getTotal());

		Transaction transaction = new Transaction();
		transaction.setAmount(amount);
		transaction.setDescription(orderDetail.getProductName());

		List<Transaction> listTransaction = new ArrayList<Transaction>();
		listTransaction.add(transaction);

		return listTransaction;
	}

	private RedirectUrls getRedirctUrls() {
		RedirectUrls redirectUrls = new RedirectUrls();
		redirectUrls.setCancelUrl("http://localhost:8080/paf/cancel.jsp");
		redirectUrls.setReturnUrl("http://localhost:8080/paf/review_payment");
		return redirectUrls;
	}

	public Payment getPaymentDetails(String paymentId) throws PayPalRESTException {
		APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
		return Payment.get(apiContext, paymentId);
	}

	public Payment executePayment(String paymentId, String payerId) throws PayPalRESTException {

		PaymentExecution paymentExecution = new PaymentExecution();
		paymentExecution.setPayerId(payerId);
		Payment payment = new Payment().setId(paymentId);
		APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
		return payment.execute(apiContext, paymentExecution);
	}

	private Payer getPayerInformation() {
		Payer payer = new Payer();
		payer.setPaymentMethod("paypal");
		return payer;
	}

}
