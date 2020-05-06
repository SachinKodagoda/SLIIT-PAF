package api.v1.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import api.v1.Doctor;
import api.v1.Error;

public class DoctorController {
	ConnectionController controller = new ConnectionController();
	

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Get A Doctor------------------------------------------------------------
	public Map<String, Object> getDoctor(int id) {

		// Create Error Message
		Error em = new Error();

		// Initialize Data to send
		Map<String, Object> data = new HashMap<String, Object>();

		// Create Connection
		Connection con = controller.connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		// Create Query
		String query = "select * from doctor where id=?";
		Doctor d = new Doctor();
		int count = 0;
		try {
			PreparedStatement preparedStmt = con.prepareStatement(query);
			ResultSet rs = preparedStmt.executeQuery();

			while (rs.next()) {
				count++;
				d.setId(rs.getString(1));
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
				data.put("Data", d);
			}
			return data;

		} catch (Exception e) {
			em.setErrorMessage("Can not retrieve data. Try later!");
			em.setCode(5001);
			data.put("Error", em);
			return data;
		}
	} // End of the getPatient()

}
