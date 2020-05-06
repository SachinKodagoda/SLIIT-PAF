package api.v1;

public class Rating {
	private int id;
	private String rating;
	private String rating_note;
	private String delete_flag;
	private String created_at;
	private String updated_at;
	private Object doctor;
	private Object patient;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getRating_note() {
		return rating_note;
	}

	public void setRating_note(String rating_note) {
		this.rating_note = rating_note;
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

	public Object getDoctor() {
		return doctor;
	}

	public void setDoctor(Object doctor) {
		this.doctor = doctor;
	}

	public Object getPatient() {
		return patient;
	}

	public void setPatient(Object patient) {
		this.patient = patient;
	}

}
