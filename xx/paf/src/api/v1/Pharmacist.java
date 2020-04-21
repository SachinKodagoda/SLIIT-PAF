package api.v1;

public class Pharmacist extends Person {
	private int activation;
	private Object pharmacy;

	public int getActivation() {
		return activation;
	}

	public void setActivation(int activation) {
		this.activation = activation;
	}

	public Object getPharmacy() {
		return pharmacy;
	}

	public void setPharmacy(Object pharmacy) {
		this.pharmacy = pharmacy;
	}

}
