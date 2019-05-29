package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	
	public Connection connect() {
		
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "DB_TEAM1";
		String password = "java1234";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, password);
			return conn;
	
		} catch (Exception e) {
			System.out.println("Connection : " + e.toString());
		}
		
		return null;
		
	}
	
	public Connection connect(String server, String id, String password) {
		
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@" + server + ":1521:xe";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, password);
			return conn;
	
		} catch (Exception e) {
			System.out.println("Connection : " + e.toString());
		}
		
		return null;
			
	}
	
}

