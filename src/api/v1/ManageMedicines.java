package api.v1;

public class ManageMedicines {
	private Object pharmacist;
	private Object medicine;
	private String date_added;

	public Object getPharmacist() {
		return pharmacist;
	}

	public void setPharmacist(Object pharmacist) {
		this.pharmacist = pharmacist;
	}

	public Object getMedicine() {
		return medicine;
	}

	public void setMedicine(Object medicine) {
		this.medicine = medicine;
	}

	public String getDate_added() {
		return date_added;
	}

	public void setDate_added(String date_added) {
		this.date_added = date_added;
	}
}
