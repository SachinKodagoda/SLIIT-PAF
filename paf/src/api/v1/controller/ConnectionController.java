package api.v1.controller;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionController {
	public Connection connect() {
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

}
