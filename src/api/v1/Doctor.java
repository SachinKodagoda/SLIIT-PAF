package api.v1;

import java.util.List;

public class Doctor extends Person {

	private List<String> speciality;
	private String professional_statement;
	private String no_of_views;
	private String activation;

	public List<String> getSpeciality() {
		return speciality;
	}

	public void setSpeciality(List<String> speciality) {
		this.speciality = speciality;
	}

	public String getProfessional_statement() {
		return professional_statement;
	}

	public void setProfessional_statement(String professional_statement) {
		this.professional_statement = professional_statement;
	}

	public String getNo_of_views() {
		return no_of_views;
	}

	public void setNo_of_views(String no_of_views) {
		this.no_of_views = no_of_views;
	}

	public String getActivation() {
		return activation;
	}

	public void setActivation(String activation) {
		this.activation = activation;
	}

}
