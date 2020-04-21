package api.v1;

public class Payment {
	private String id;
	private String patient_id;
	private String amount;
	private String payment_datetime;
	private String refund_state;
	private String method;
	private String delete_flag;
	private String created_at;
	private String updated_at;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getPayment_datetime() {
		return payment_datetime;
	}

	public void setPayment_datetime(String payment_datetime) {
		this.payment_datetime = payment_datetime;
	}

	public String getRefund_state() {
		return refund_state;
	}

	public void setRefund_state(String refund_state) {
		this.refund_state = refund_state;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
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

}
