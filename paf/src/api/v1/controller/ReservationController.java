package api.v1.controller;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.google.gson.Gson;

import api.v1.Reservation;
import api.v1.model.ReservationModel;

@Path("v1/reservation")
public class ReservationController {

	ReservationModel model = new ReservationModel();
	Map<String, Object> data = new HashMap<String, Object>();
	Gson gson = new Gson();

	// RETRIVE------------------------------------------------
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservation() {
		return gson.toJson(model.getReservation("-1",""));
	}
	
	@GET
	@Path("active")
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservationActive() {
		return gson.toJson(model.getReservation("0",""));
	}
	
	@GET
	@Path("active/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservationActive(@PathParam("id") String id) {
		return gson.toJson(model.getReservation("0",id));
	}
	
	@GET
	@Path("pending")
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservationPending() {
		return gson.toJson(model.getReservation("1",""));
	}
	
	@GET
	@Path("reserved")
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservationReserved() {
		return gson.toJson(model.getReservation("2",""));
	}
	
	@GET
	@Path("doctor")
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservationDoctor() {
		return gson.toJson(model.getReservation("3",""));
	}
	
	@GET
	@Path("hospital")
	@Produces(MediaType.APPLICATION_JSON)
	public String getReservationHospital() {
		return gson.toJson(model.getReservation("4",""));
	}
	
	// UPDATE--------------------------------------------------
	
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("active")
	@Produces(MediaType.APPLICATION_JSON)
	public String updateReservationActive(String json) {
		Reservation r = gson.fromJson(json, Reservation.class);
		return gson.toJson(model.updateReservation(r,"0"));
	}
	

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("pending")
	@Produces(MediaType.APPLICATION_JSON)
	public String updateReservationPending(String json) {
		Reservation r = gson.fromJson(json, Reservation.class);
		return gson.toJson(model.updateReservation(r,"1"));
	}
	
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("reserved")
	@Produces(MediaType.APPLICATION_JSON)
	public String updateReservationReserevd(String json) {
		Reservation r = gson.fromJson(json, Reservation.class);
		return gson.toJson(model.updateReservation(r,"2"));
	}
	
	
	
	//INSERT-----------------------------------------------------
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("doctor")
	@Produces(MediaType.APPLICATION_JSON)
	public String insertReservationDoctor(String json) {
		Reservation r = gson.fromJson(json, Reservation.class);
		return gson.toJson(model.insertReservationDoctor(r));
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("hospital")
	@Produces(MediaType.APPLICATION_JSON)
	public String insertReservationHospital(String json) {
		Reservation r = gson.fromJson(json, Reservation.class);
		return gson.toJson(model.insertReservationHospital(r));
	}
}
