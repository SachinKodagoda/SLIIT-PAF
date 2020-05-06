package api.v1.controller;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import api.v1.Payment;
import api.v1.model.PaymentModel;

import com.google.gson.Gson;

@Path("v1/payment")
public class PaymentController {
	
	PaymentModel model = new PaymentModel();
	Map<String, Object> data = new HashMap<String, Object>();
	Gson gson = new Gson();
	
	// RETRIVE------------------------------------------------
	
	@GET
	@Path("patient/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservationActive(@PathParam("id") String id) {
		return gson.toJson(model.getPaymentPatientAll(id));
	}
	
	//INSERT-----------------------------------------------------
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("patient")
	@Produces(MediaType.APPLICATION_JSON)
	public String insertPaymentPatient(String json) {
		Payment py = gson.fromJson(json, Payment.class);
		return gson.toJson(model.insertPaymentPatient(py));
	}
}
