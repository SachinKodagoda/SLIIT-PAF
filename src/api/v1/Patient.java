package api.v1;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Patient extends Person {

	private String marital_status;
	private String activation;

	public String getMarital_status() {
		return marital_status;
	}

	public void setMarital_status(String marital_status) {
		this.marital_status = marital_status;
	}

	public String getActivation() {
		return activation;
	}

	public void setActivation(String activation) {
		this.activation = activation;
	}

}
