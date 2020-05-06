package api.v1.controller;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;
import api.v1.Patient;
import api.v1.model.PatientModel;

@Path("/v1/patient")
public class PatientController {

	PatientModel model = new PatientModel();
	Map<String, Object> data = new HashMap<String, Object>();
	Gson gson = new Gson();

	//INSERT
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String insertPatient(String json) {
		Patient p = gson.fromJson(json, Patient.class);
		return gson.toJson(model.insertPatient(p));
	}
	
	//UPDATE
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	public String updatePatient(String json) {
		Patient p = gson.fromJson(json, Patient.class);
		return gson.toJson(model.updatePatient(p));
	}
	
	//DELETE
	@DELETE
	@Path("/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public String deletePatient(@PathParam("id") String id) {
		return gson.toJson(model.deletePatient(id));
	}

	//RETRIVE
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String getPatients() {
		return gson.toJson(model.getPatients());
	}

	//RETRIVE
	@GET
	@Path("/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public String getPatient(@PathParam("id") String id) {
		return gson.toJson(model.getPatient(id));
	}

}



