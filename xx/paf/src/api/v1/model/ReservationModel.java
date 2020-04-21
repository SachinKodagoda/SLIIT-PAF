package api.v1.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import api.v1.Doctor;
import api.v1.Error;
import api.v1.Hospital;
import api.v1.Patient;
import api.v1.Payment;
import api.v1.Reservation;
import api.v1.controller.ConnectionController;

public class ReservationModel {
	ConnectionController controller = new ConnectionController();

	public Doctor getDoctorObject(String id) {
		Connection con = controller.connect();
		String query = "select";
		query += " id,";
		query += " email,";
		query += " f_name,";
		query += " l_name,";
		query += " gender,";
		query += " address,";
		query += " contact_no,";
		query += " dob,";
		query += " image_link,";
		query += " professional_statement,";
		query += " no_of_views";
		query += " from doctor where id = ?";

		Doctor d = new Doctor();
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, id);
			ResultSet rs = preparedStmt.executeQuery();

			while (rs.next()) {
				d.setId(rs.getString(1));
				d.setEmail(rs.getString(2));
				d.setF_name(rs.getString(3));
				d.setL_name(rs.getString(4));
				d.setGender(rs.getString(5));
				d.setAddress(rs.getString(6));
				d.setContact_no(rs.getString(7));
				d.setDob(rs.getString(8));
				d.setImage_link(rs.getString(9));
				d.setProfessional_statement(rs.getString(10));
				d.setNo_of_views(rs.getString(11));
			}
			rs.close();
			preparedStmt.close();
			con.close();
			return d;

		} catch (Exception e) {
			System.out.println("------getDoctorObject------");
			System.out.println(e);
			return d;
		}
	}

	public Patient getPatientObject(String id) {
		Connection con = controller.connect();
		String query = "select";
		query += " id,";
		query += " email,";
		query += " f_name,";
		query += " l_name,";
		query += " gender,";
		query += " address,";
		query += " contact_no,";
		query += " dob,";
		query += " image_link,";
		query += " marital_status";
		query += " from patient where id = ?";
		Patient p = new Patient();
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, id);
			ResultSet rs = preparedStmt.executeQuery();

			while (rs.next()) {
				p.setId(rs.getString(1));
				p.setEmail(rs.getString(2));
				p.setF_name(rs.getString(3));
				p.setL_name(rs.getString(4));
				p.setGender(rs.getString(5));
				p.setAddress(rs.getString(6));
				p.setContact_no(rs.getString(7));
				p.setDob(rs.getString(8));
				p.setImage_link(rs.getString(9));
				p.setMarital_status(rs.getString(10));
			}
			rs.close();
			preparedStmt.close();
			con.close();
			return p;

		} catch (Exception e) {
			System.out.println("------getPatientObject------");
			System.out.println(e);
			return p;
		}
	}

	public Hospital getHospitalObject(String id) {
		Connection con = controller.connect();
		String query = "select";
		query += " id,";
		query += " name,";
		query += " address,";
		query += " email,";
		query += " city,";
		query += " district,";
		query += " contact_no";
		query += " from hospital where id = ?";
		Hospital h = new Hospital();
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, id);
			ResultSet rs = preparedStmt.executeQuery();

			while (rs.next()) {
				h.setId(rs.getString(1));
				h.setName(rs.getString(2));
				h.setAddress(rs.getString(3));
				h.setEmail(rs.getString(4));
				h.setCity(rs.getString(5));
				h.setDistrict(rs.getString(6));
				h.setContact_no(rs.getString(7));
			}
			rs.close();
			preparedStmt.close();
			con.close();
			return h;

		} catch (Exception e) {
			System.out.println("------getHospitalObject------");
			System.out.println(e);
			return h;
		}
	}

	public Payment getPaymentObject(String id) {
		Connection con = controller.connect();
		String query = "select";
		query += " id,";
		query += " amount,";
		query += " payment_datetime,";
		query += " refund_state,";
		query += " method";
		query += " from payment where id = ?";
		Payment py = new Payment();
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, id);
			ResultSet rs = preparedStmt.executeQuery();

			while (rs.next()) {
				py.setId(rs.getString(1));
				py.setAmount(rs.getString(2));
				py.setPayment_datetime(rs.getString(3));
				py.setRefund_state(rs.getString(4));
				py.setMethod(rs.getString(5));
			}
			rs.close();
			preparedStmt.close();
			con.close();
			return py;

		} catch (Exception e) {
			System.out.println("------getPaymentObject------");
			System.out.println(e);
			return py;
		}
	}

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Get A Reservation List----------------------------------------------------
	public Map<String, Object> getReservation(String reservation_state, String id) {
		Error em = new Error();
		Map<String, Object> data = new HashMap<String, Object>();
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		String query = "select";

		query += " hospital_id,";
		query += " doctor_id,";
		query += " reservation_token,";
		query += " reservation_state,";
		query += " doctor_charge,";
		query += " hospital_charge,";
		query += " start_time,";
		query += " end_time,";
		if (reservation_state == "2") {
			query += " schedule_date,";
			query += " patient_id,";
			query += " payment_id";
		} else if (reservation_state == "1") {
			query += " schedule_date,";
			query += " patient_id";
		} else {
			query += " schedule_date";
		}

		if (reservation_state == "-1") {
			query += " from reservation where delete_flag=0";
		} else {
			query += " from reservation where reservation_state = ? and delete_flag=0";
		}

		if (id != "") {
			query += " and doctor_id=" + id;
		}

		List<Reservation> reservations = new ArrayList<>();
		int count = 0;
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			if (reservation_state != "-1") {
				preparedStmt.setString(1, reservation_state);
			}
			ResultSet rs = preparedStmt.executeQuery();

			while (rs.next()) {
				count++;
				Reservation r = new Reservation();
				r.setHospital(getHospitalObject(rs.getString(1)));
				r.setDoctor(getDoctorObject(rs.getString(2)));
				r.setReservation_token(rs.getString(3));
				r.setReservation_state(rs.getString(4));
				r.setDoctor_charge(rs.getString(5));
				r.setHospital_charge(rs.getString(6));
				r.setStart_time(rs.getString(7));
				r.setEnd_time(rs.getString(8));
				r.setSchedule_date(rs.getString(9));
				if (reservation_state == "1") {
					r.setPatient(getPatientObject(rs.getString(10)));
				}
				if (reservation_state == "2") {
					r.setPatient(getPatientObject(rs.getString(10)));
					r.setPayment(getPaymentObject(rs.getString(11)));
				}
				reservations.add(r);
			}

			// Clean-up environment
			rs.close();
			preparedStmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have recieved data successfully!");
			data.put("Error", em);
			data.put("DataCount", count);
			if (count > 0) {
				data.put("Data", reservations);
			}
			return data;

		} catch (Exception e) {
			System.out.println("------getReservation------");
			System.out.println(e);
			em.setErrorMessage("Can not retrieve data. Try later!");
			em.setCode(5001);
			data.put("Error", em);
			return data;
		}
	} // End of the getReservation()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To get Doctor related
	// reservations----------------------------------------------------
	public Map<String, Object> getReservationDoctorAdded(String id) {
		Error em = new Error();
		Map<String, Object> data = new HashMap<String, Object>();
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		String query = "select";
		query += " hospital_id,";
		query += " reservation_token,";
		query += " reservation_state,";
		query += " doctor_charge,";
		query += " hospital_charge,";
		query += " start_time,";
		query += " end_time,";
		query += " schedule_date,";
		query += " patient_id,";
		query += " payment_id";
		query += " from reservation where delete_flag=0 and doctor_id=?";

		List<Reservation> reservations = new ArrayList<>();
		int count = 0;
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, id);
			ResultSet rs = preparedStmt.executeQuery();
			while (rs.next()) {
				count++;
				Reservation r = new Reservation();
				r.setHospital(getHospitalObject(rs.getString(1)));
				r.setReservation_token(rs.getString(2));
				r.setReservation_state(rs.getString(3));
				r.setDoctor_charge(rs.getString(4));
				r.setHospital_charge(rs.getString(5));
				r.setStart_time(rs.getString(6));
				r.setEnd_time(rs.getString(7));
				r.setSchedule_date(rs.getString(8));
				r.setPatient(getPatientObject(rs.getString(9)));
				r.setPayment(getPaymentObject(rs.getString(10)));
				reservations.add(r);
			}

			// Clean-up environment
			rs.close();
			preparedStmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have recieved data successfully!");
			data.put("Error", em);
			data.put("DataCount", count);
			if (count > 0) {
				data.put("Data", reservations);
			}
			return data;

		} catch (Exception e) {
			System.out.println("------getReservationDoctorAdded------");
			System.out.println(e);
			em.setErrorMessage("Can not retrieve data. Try later!");
			em.setCode(5001);
			data.put("Error", em);
			return data;
		}
	} // End of the getReservationDoctorAdded()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// Hospital first --------------------------------------------------------------
	public Map<String, Object> insertReservationHospital(Reservation r) {
		Error em = new Error();
		Map<String, Object> data = new HashMap<String, Object>();
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		String query = "";
		query += " insert into reservation(";
		query += " hospital_id,";
		query += " hospital_charge,";
		query += " start_time,";
		query += " end_time,";
		query += " reservation_state,";
		query += " schedule_date)";
		query += " values(?,?,?,?,?,?) ";

		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, r.getHospital_id());
			preparedStmt.setString(2, r.getHospital_charge());
			preparedStmt.setString(3, r.getStart_time());
			preparedStmt.setString(4, r.getEnd_time());
			preparedStmt.setString(5, "4");
			preparedStmt.setString(6, r.getSchedule_date());
			preparedStmt.executeUpdate();
			preparedStmt.close();
			con.close();

			em.setSuccessMessage("You have inserted data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			System.out.println("------insertReservationHospital------");
			System.out.println(e);
			em.setErrorMessage("Can not insert data. Try later!");
			em.setCode(2001);
			data.put("Error", em);
			return data;
		}
	} // End of the insertReservationHospital()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// Doctor first ----------------------------------------------------------------
	public Map<String, Object> insertReservationDoctor(Reservation r) {
		Error em = new Error();
		Map<String, Object> data = new HashMap<String, Object>();
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		String query = "";
		query += " insert into reservation(";
		query += " doctor_id,";
		query += " doctor_charge,";
		query += " start_time,";
		query += " end_time,";
		query += " reservation_state,";
		query += " schedule_date)";
		query += " values(?,?,?,?,?,?) ";

		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, r.getDoctor_id());
			preparedStmt.setString(2, r.getDoctor_charge());
			preparedStmt.setString(3, r.getStart_time());
			preparedStmt.setString(4, r.getEnd_time());
			preparedStmt.setString(5, "3");
			preparedStmt.setString(6, r.getSchedule_date());
			preparedStmt.executeUpdate();
			preparedStmt.close();
			con.close();

			em.setSuccessMessage("You have inserted data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			System.out.println("------insertReservationDoctor------");
			System.out.println(e);
			em.setErrorMessage("Can not insert data. Try later!");
			em.setCode(2001);
			data.put("Error", em);
			return data;
		}
	} // End of the insertReservationDoctor()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// Activate Reservation --------------------------------------------------------
	public Map<String, Object> updateReservation(Reservation r, String reservation_state) {
		Error em = new Error();
		Map<String, Object> data = new HashMap<String, Object>();
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		String query = "";
		query += " update reservation set ";
		if (reservation_state == "0") {
			query += " patient_id = null,";
			query += " payment_id = null,";
		} else if (reservation_state == "1") {
			query += " patient_id = ?,";
			query += " payment_id = null,";
		} else if (reservation_state == "2") {
			query += " patient_id = ?,";
			query += " payment_id = ?,";
		}
		query += " reservation_state = ?";
		query += " where reservation_token = ?";

		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			if (reservation_state == "0") {
				preparedStmt.setString(1, reservation_state);
				preparedStmt.setString(2, r.getReservation_token());
			} else if (reservation_state == "1") {
				preparedStmt.setString(1, r.getPatient_id());
				preparedStmt.setString(2, reservation_state);
				preparedStmt.setString(3, r.getReservation_token());
			} else if (reservation_state == "2") {
				preparedStmt.setString(1, r.getPatient_id());
				preparedStmt.setString(2, r.getPayment_id());
				preparedStmt.setString(3, reservation_state);
				preparedStmt.setString(4, r.getReservation_token());
			}
			preparedStmt.executeUpdate();
			preparedStmt.close();
			con.close();

			em.setSuccessMessage("You have updated data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			System.out.println("------updateReservation------");
			System.out.println(e);
			em.setErrorMessage("Can not update data. Try later!");
			em.setCode(3001);
			data.put("Error", em);
			return data;
		}
	} // End of the updateReservation()
	
	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// Activate Reservation --------------------------------------------------------
	public Map<String, Object> deleteReservation(String reservation_token) {
		Error em = new Error();
		Map<String, Object> data = new HashMap<String, Object>();
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		String query = "";
		query += " update reservation set ";
		query += " delete_flag = 1";
		query += " where reservation_token = ?";

		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, reservation_token);
			preparedStmt.executeUpdate();
			preparedStmt.close();
			con.close();

			em.setSuccessMessage("You have deleted data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			System.out.println("------deleteReservation------");
			System.out.println(e);
			em.setErrorMessage("Can not delete data. Try later!");
			em.setCode(4001);
			data.put("Error", em);
			return data;
		}
	} // End of the deleteReservation()
	
	
	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// Activate Reservation --------------------------------------------------------
	public Map<String, Object> updateReservationDoctor(Reservation r) {
		Error em = new Error();
		Map<String, Object> data = new HashMap<String, Object>();
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		String query = "";
		query += " update reservation set ";
		query += " doctor_charge = ?,";
		query += " start_time = ?,";
		query += " end_time = ?,";
		query += " schedule_date = ?";
		query += " where reservation_token = ?";

		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, r.getDoctor_charge());
			preparedStmt.setString(2, r.getStart_time());
			preparedStmt.setString(3, r.getEnd_time());
			preparedStmt.setString(4, r.getSchedule_date());
			preparedStmt.setString(5, r.getReservation_token());
			preparedStmt.executeUpdate();
			preparedStmt.close();
			con.close();

			em.setSuccessMessage("You have update data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			System.out.println("------updateReservationDoctor------");
			System.out.println(e);
			em.setErrorMessage("Can not delete data. Try later!");
			em.setCode(3001);
			data.put("Error", em);
			return data;
		}
	} // End of the updateReservationDoctor()

}
