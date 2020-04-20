package api.v1;

public class Medicine {
	private int id;
	private String medical_name;
	private String brand_name;
	private String expiration_date;
	private String sold_state;
	private String delete_flag;
	private String created_at;
	private String updated_at;
	private float price;
	private int quantity;
	private String date_added;
	private Object patient;
	private Object pharmacy;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMedical_name() {
		return medical_name;
	}

	public void setMedical_name(String medical_name) {
		this.medical_name = medical_name;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public String getExpiration_date() {
		return expiration_date;
	}

	public void setExpiration_date(String expiration_date) {
		this.expiration_date = expiration_date;
	}

	public String getSold_state() {
		return sold_state;
	}

	public void setSold_state(String sold_state) {
		this.sold_state = sold_state;
	}

	public String getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(String delete_flag) {
		this.delete_flag = delete_flag;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
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

	public String getDate_added() {
		return date_added;
	}

	public void setDate_added(String date_added) {
		this.date_added = date_added;
	}

	public Object getPatient() {
		return patient;
	}

	public void setPatient(Object patient) {
		this.patient = patient;
	}

	public Object getPharmacy() {
		return pharmacy;
	}

	public void setPharmacy(Object pharmacy) {
		this.pharmacy = pharmacy;
	}

}
