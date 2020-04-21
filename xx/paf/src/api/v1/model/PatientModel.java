package api.v1.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import api.v1.Error;
import api.v1.Patient;

public class PatientModel {
	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// Connection Method-----------------------------------------------------------
	private Connection connect() {
		Connection con = null;
		String url = "jdbc:mysql://127.0.0.1:3306/paf";
		String username = "root";
		String password = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Check A Patient by
	// id--------------------------------------------------------
	public boolean checkPatientById(String id) {
		Connection con = connect();
		String query = "select * from patient where id='" + id + "'";
		int count = 0;
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				count++;
			}

			rs.close();
			stmt.close();
			con.close();

			if (count > 0)
				return true;
			else
				return false;

		} catch (Exception e) {
			return true; // If any error then main function will handle it
		}
	} // End of the checkPatientById()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Check A Patient by
	// email--------------------------------------------------------
	public boolean checkPatientByEmail(String email) {
		Connection con = connect();
		String query = "select * from patient where id='" + email + "'";
		int count = 0;
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				count++;
			}

			rs.close();
			stmt.close();
			con.close();

			if (count > 0)
				return true;
			else
				return false;

		} catch (Exception e) {
			return true; // If any error then main function will handle it
		}
	} // End of the checkPatientById()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Insert A Patient--------------------------------------------------------
	public Map<String, Object> insertPatient(Patient p) {
		// Create Error Message
		Error em = new Error();

		// Initialize Data to send
		Map<String, Object> data = new HashMap<String, Object>();

		// if (checkPatientByEmail(p.getEmail()) == true) {
		// em.setErrorMessage("Data is already available in the databasee");
		// em.setCode(2002);
		// data.put("Error", em);
		// return data;
		// }

		// Create Connection
		Connection con = connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		// Create Query
		String query = "";
		query += "insert into patient ";
		query += "(email, ";
		query += "f_name, ";
		query += "l_name, ";
		query += "gender, ";
		query += "address, ";
		query += "contact_no, ";
		query += "dob, ";
		query += "pass, ";
		query += "marital_status, ";
		query += "activation)";
		query += "values(?,?,?,?,?,?,?,?,?,?) ";

		try {
			// Set and execute query
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, p.getEmail()); // binding values
			preparedStmt.setString(2, p.getF_name()); // binding values
			preparedStmt.setString(3, p.getL_name()); // binding values
			preparedStmt.setString(4, p.getGender()); // binding values
			preparedStmt.setString(5, p.getAddress()); // binding values
			preparedStmt.setString(6, p.getContact_no()); // binding values
			preparedStmt.setString(7, p.getDob()); // binding values
			preparedStmt.setString(8, p.getPass()); // binding values
			preparedStmt.setString(9, p.getMarital_status()); // binding values
			preparedStmt.setString(10, p.getActivation()); // binding values
			preparedStmt.executeUpdate();

			// Clean-up environment
			preparedStmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have inserted data successfully!");
			data.put("Error", em);
			return data;

		} catch (SQLException se) {
			// Handle errors for JDBC
			int errCode = se.getErrorCode();

			if (errCode == 1062) // MySQLIntegrityConstraintViolationException
			{
				em.setErrorMessage("Data is already available in the database");
				em.setCode(2002);
				data.put("Error", em);
				return data;
			}

			if (errCode == 1406 || errCode == 1292) // MysqlDataTruncation
			{
				em.setErrorMessage("Invalid inputs");
				em.setCode(2003);
				data.put("Error", em);
				return data;
			}
			em.setErrorMessage("Can not insert data. Try later!");
			em.setCode(2001);
			data.put("Error", em);
			return data;
		} catch (Exception ex) {
			// Handle errors for Class.forName
			System.out.println(ex);
			em.setErrorMessage("Exception Occured. Try later!");
			em.setCode(1002);
			data.put("Error", em);
			return data;
		}
	} // End of the insertPatient()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Update A Patient--------------------------------------------------------
	public Map<String, Object> updatePatient(Patient p) {
		// Create Error Message
		Error em = new Error();

		// Initialize Data to send
		Map<String, Object> data = new HashMap<String, Object>();

		if (checkPatientById(p.getId()) == false) {
			em.setErrorMessage("No such data in the database");
			em.setCode(3002);
			data.put("Error", em);
			return data;
		}

		// Create Connection
		Connection con = connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		// Create Query
		String query = "";
		query += "update patient set ";
		query += "f_name=?, ";
		query += "l_name=?, ";
		query += "gender=?, ";
		query += "address=?, ";
		query += "contact_no=?, ";
		query += "dob=?, ";
		query += "pass=?, ";
		query += "marital_status=? ";
		query += "where id=? ";
		try {
			// Set and execute query
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, p.getF_name()); // binding values
			preparedStmt.setString(2, p.getL_name()); // binding values
			preparedStmt.setString(3, p.getGender()); // binding values
			preparedStmt.setString(4, p.getAddress()); // binding values
			preparedStmt.setString(5, p.getContact_no()); // binding values
			preparedStmt.setString(6, p.getDob()); // binding values
			preparedStmt.setString(7, p.getPass()); // binding values
			preparedStmt.setString(8, p.getMarital_status()); // binding values
			preparedStmt.setString(9, p.getId()); // binding values

			preparedStmt.executeUpdate();

			// Clean-up environment
			preparedStmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have updated data successfully!");
			data.put("Error", em);
			return data;

		} catch (SQLException se) {
			// Handle errors for JDBC
			int errCode = se.getErrorCode();
			if (errCode == 547) // Foreign Key violation
			{
				em.setErrorMessage("Invalid inputs");
				em.setCode(3003);
				data.put("Error", em);
				return data;
			}
			if (errCode == 1406 || errCode == 1292) // MysqlDataTruncation
			{
				em.setErrorMessage("Invalid inputs");
				em.setCode(3003);
				data.put("Error", em);
				return data;
			}
			em.setErrorMessage("Can not update data. Try later!");
			em.setCode(3001);
			data.put("Error", em);
			return data;
		} catch (Exception ex) {
			// Handle errors for Class.forName
			System.out.println(ex);
			em.setErrorMessage("Exception Occured. Try later!");
			em.setCode(1002);
			data.put("Error", em);
			return data;
		}
	} // End of the updatePatient()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Delete A Patient------------------------------------------------------------
	public Map<String, Object> deletePatient(String id) {

		// Create Error Message
		Error em = new Error();

		// Initialize Data to send
		Map<String, Object> data = new HashMap<String, Object>();

		if (checkPatientById(id) == false) {
			em.setErrorMessage("No such data in the database");
			em.setCode(4002);
			data.put("Error", em);
			return data;
		}

		// Create Connection
		Connection con = connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		// Create Query
		String query = "delete from patient where id=?";
		try {
			// Set and execute query
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, id); // binding values
			preparedStmt.executeUpdate();

			// Clean-up environment
			preparedStmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have deleted data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			em.setErrorMessage("Can not delete data. Try later!");
			em.setCode(4001);
			data.put("Error", em);
			return data;
		}
	} // End of the deletePatient()

	
	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Delete A Patient------------------------------------------------------------
	public Map<String, Object> deleteFlagePatient(String id) {

		// Create Error Message
		Error em = new Error();

		// Initialize Data to send
		Map<String, Object> data = new HashMap<String, Object>();

		if (checkPatientById(id) == false) {
			em.setErrorMessage("No such data in the database");
			em.setCode(4002);
			data.put("Error", em);
			return data;
		}

		// Create Connection
		Connection con = connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		// Create Query
		String query = "update patient from patient where id=?";
		try {
			// Set and execute query
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, id); // binding values
			preparedStmt.executeUpdate();

			// Clean-up environment
			preparedStmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have deleted data successfully!");
			data.put("Error", em);
			return data;

		} catch (Exception e) {
			em.setErrorMessage("Can not delete data. Try later!");
			em.setCode(4001);
			data.put("Error", em);
			return data;
		}
	} // End of the deleteFlagePatient()
	
	
	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Get A Patient------------------------------------------------------------
	public Map<String, Object> getPatient(String id) {

		// Create Error Message
		Error em = new Error();

		// Initialize Data to send
		Map<String, Object> data = new HashMap<String, Object>();

		// Create Connection
		Connection con = connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		// Create Query
		String query = "select * from patient where id='" + id + "'";
		Patient p = new Patient();
		int count = 0;
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				count++;
				p.setId(rs.getString(1));
				p.setEmail(rs.getString(2));
				p.setF_name(rs.getString(3));
				p.setL_name(rs.getString(4));
				p.setGender(rs.getString(5));
				p.setAddress(rs.getString(6));
				p.setContact_no(rs.getString(7));
				p.setDob(rs.getString(8));
				p.setPass(rs.getString(9));
				p.setDelete_flag(rs.getString(10));
				p.setCreated_at(rs.getString(11));
				p.setUpdated_at(rs.getString(12));
				p.setMarital_status(rs.getString(13));
				p.setActivation(rs.getString(14));
			}

			// Clean-up environment
			rs.close();
			stmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have recieved data successfully!");
			data.put("Error", em);
			data.put("DataCount", count);
			if (count > 0) {
				data.put("Data", p);
			}
			return data;

		} catch (Exception e) {
			em.setErrorMessage("Can not retrieve data. Try later!");
			em.setCode(5001);
			data.put("Error", em);
			return data;
		}
	} // End of the getPatient()

	// |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	// To Get A Patient List------------------------------------------------------
	public Map<String, Object> getPatients() {

		// Create Error Message
		Error em = new Error();

		// Initialize Data to send
		Map<String, Object> data = new HashMap<String, Object>();

		// Create Connection
		Connection con = connect();
		if (con == null) {
			em.setErrorMessage("Database Connection Error. Try later!");
			em.setCode(1001);
			data.put("Error", em);
			return data;
		}

		// Create Query
		String query = "select * from patient";
		List<Patient> patients = new ArrayList<>();
		int count = 0;
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				count++;
				Patient p = new Patient();
				p.setId(rs.getString(1));
				p.setEmail(rs.getString(2));
				p.setF_name(rs.getString(3));
				p.setL_name(rs.getString(4));
				p.setGender(rs.getString(5));
				p.setAddress(rs.getString(6));
				p.setContact_no(rs.getString(7));
				p.setDob(rs.getString(8));
				p.setPass(rs.getString(9));
				p.setDelete_flag(rs.getString(10));
				p.setCreated_at(rs.getString(11));
				p.setUpdated_at(rs.getString(12));
				p.setMarital_status(rs.getString(13));
				p.setActivation(rs.getString(14));
				patients.add(p);
			}

			// Clean-up environment
			rs.close();
			stmt.close();
			con.close();

			// Create Data with no error
			em.setSuccessMessage("You have recieved data successfully!");
			data.put("Error", em);
			data.put("DataCount", count);
			if (count > 0) {
				data.put("Data", patients);
			}
			return data;

		} catch (Exception e) {
			em.setErrorMessage("Can not retrieve data. Try later!");
			em.setCode(5001);
			data.put("Error", em);
			return data;
		}
	} // End of the getPatients()

} // End of the Class
