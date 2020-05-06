package api.v1;

public class MedicalReport {
	private int id;
	private String medical_lab;
	private String report_link;
	private String taken_date;
	private int type;
	private String patient_comment;
	private String delete_flag;
	private String created_at;
	private String updated_at;
	private Object patient;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMedical_lab() {
		return medical_lab;
	}

	public void setMedical_lab(String medical_lab) {
		this.medical_lab = medical_lab;
	}

	public String getReport_link() {
		return report_link;
	}

	public void setReport_link(String report_link) {
		this.report_link = report_link;
	}

	public String getTaken_date() {
		return taken_date;
	}

	public void setTaken_date(String taken_date) {
		this.taken_date = taken_date;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getPatient_comment() {
		return patient_comment;
	}

	public void setPatient_comment(String patient_comment) {
		this.patient_comment = patient_comment;
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

	public Object getPatient() {
		return patient;
	}

	public void setPatient(Object patient) {
		this.patient = patient;
	}

}
