package com;

public class OrderDetail {

	private String productName;
	private float total;

//	Constructor --------------------------------------

	public OrderDetail(String productName,String total) {
		super();
		this.productName = productName;
		this.total = Float.parseFloat(total);
	}

//	Getters --------------------------------------

	public String getProductName() {
		return productName;
	}

	public String getTotal() {
		return String.format("%.2f", total);
	}


}
