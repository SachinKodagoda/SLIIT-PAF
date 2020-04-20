package api.v1.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import api.v1.Error;
import api.v1.Payment;
import api.v1.controller.ConnectionController;

public class PaymentModel {
	ConnectionController controller = new ConnectionController();

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// Patient Payment --------------------------------------------------------------
	public Map<String, Object> insertPaymentPatient(Payment r) {
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
		query += " insert into payment(";
		query += " id,";
		query += " patient_id,";
		query += " amount,";
		query += " payment_datetime,";
		query += " method)";
		query += " values(?,?,?,?,?) ";

		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, r.getId());
			preparedStmt.setString(2, r.getPatient_id());
			preparedStmt.setString(3, r.getAmount());
			preparedStmt.setString(4, r.getPayment_datetime());
			preparedStmt.setString(5, r.getMethod());
			preparedStmt.executeUpdate();
			preparedStmt.close();
			
			preparedStmt.close();
			con.close();

			em.setSuccessMessage("You have inserted data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			System.out.println("------insertPaymentPatient------");
			System.out.println(e);
			em.setErrorMessage("Can not insert data. Try later!");
			em.setCode(2001);
			data.put("Error", em);
			return data;
		}
	} // End of the insertPaymentPatient()
	
	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Get A Reservation List----------------------------------------------------
	public Map<String, Object> getPaymentPatientAll(String patient_id) {
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
		query += " id,";
		query += " amount,";
		query += " payment_datetime,";
		query += " refund_state,";
		query += " method";
		query += " from payment where delete_flag=0 and patient_id=?";

		List<Payment> payments = new ArrayList<>();
		int count = 0;
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, patient_id);
			ResultSet rs = preparedStmt.executeQuery();

			while (rs.next()) {
				count++;
				Payment py = new Payment();
				py.setId(rs.getString(1));
				py.setAmount(rs.getString(2));
				py.setPayment_datetime(rs.getString(3));
				py.setRefund_state(rs.getString(4));
				py.setMethod(rs.getString(5));
				payments.add(py);
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
				data.put("Data", payments);
			}
			return data;

		} catch (Exception e) {
			System.out.println("------getPaymentPatientAll------");
			System.out.println(e);
			em.setErrorMessage("Can not retrieve data. Try later!");
			em.setCode(5001);
			data.put("Error", em);
			return data;
		}
	} // End of the getReservation()
}
