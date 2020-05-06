package api.v1;

public class MakeOrders {
	private Object patient;
	private Object medicine;
	private float price;
	private int quantity;

	public Object getPatient() {
		return patient;
	}

	public void setPatient(Object patient) {
		this.patient = patient;
	}

	public Object getMedicine() {
		return medicine;
	}

	public void setMedicine(Object medicine) {
		this.medicine = medicine;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
