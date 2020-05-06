package api.v1;

public class Reservation {
	private String reservation_token;
	private Object patient;
	private Object hospital;
	private Object doctor;
	private Object payment;
	private String patient_id;
	private String hospital_id;
	private String doctor_id;
	private String payment_id;
	private String reservation_state;
	private String doctor_charge;
	private String hospital_charge;
	private String start_time;
	private String end_time;
	private String schedule_date;
	private String delete_flag;
	private String created_at;
	private String updated_at;

	public String getReservation_token() {
		return reservation_token;
	}

	public void setReservation_token(String reservation_token) {
		this.reservation_token = reservation_token;
	}

	public Object getPatient() {
		return patient;
	}

	public void setPatient(Object patient) {
		this.patient = patient;
	}

	public Object getHospital() {
		return hospital;
	}

	public void setHospital(Object hospital) {
		this.hospital = hospital;
	}

	public Object getDoctor() {
		return doctor;
	}

	public void setDoctor(Object doctor) {
		this.doctor = doctor;
	}

	public Object getPayment() {
		return payment;
	}

	public void setPayment(Object payment) {
		this.payment = payment;
	}

	public String getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}

	public String getHospital_id() {
		return hospital_id;
	}

	public void setHospital_id(String hospital_id) {
		this.hospital_id = hospital_id;
	}

	public String getDoctor_id() {
		return doctor_id;
	}

	public void setDoctor_id(String doctor_id) {
		this.doctor_id = doctor_id;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public String getReservation_state() {
		return reservation_state;
	}

	public void setReservation_state(String reservation_state) {
		this.reservation_state = reservation_state;
	}

	public String getDoctor_charge() {
		return doctor_charge;
	}

	public void setDoctor_charge(String doctor_charge) {
		this.doctor_charge = doctor_charge;
	}

	public String getHospital_charge() {
		return hospital_charge;
	}

	public void setHospital_charge(String hospital_charge) {
		this.hospital_charge = hospital_charge;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getSchedule_date() {
		return schedule_date;
	}

	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
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
