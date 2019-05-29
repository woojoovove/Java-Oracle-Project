package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dto.LecturerDTO;
import dto.StudentInfoDTO;
import util.DBUtil;

public class LoginDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;

//-----------------------------------------------------
	
	public LoginDAO() {
		
		try {
			DBUtil util = new DBUtil();
			this.conn = util.connect();
			this.stat = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DAO생성자에서 오류");
		}
		
	}//Method : DAO

//-----------------------------------------------------	
	
	public boolean isConnected() {
		
		try {
			return !this.conn.isClosed();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
		
	}
	
//-----------------------------------------------------
	
	public void close() {
		
		try {
			this.conn.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	}//Method : close

//----------------------------------------------------------------------------------------------------
	
	public ArrayList<LecturerDTO> lecturerLogin() {
				
		try {
			
			String sql = "SELECT name FROM tblLecturer";
			ResultSet rs = stat.executeQuery(sql);
			
			ArrayList<LecturerDTO> lecturerList = new ArrayList<LecturerDTO>();
			
			while (rs.next()) {	
				
				LecturerDTO lectrerDto = new LecturerDTO();				
				lectrerDto.setName(rs.getString("name"));				
				lecturerList.add(lectrerDto);	
				
			}
			
			return lecturerList;
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		return null;
		
	}//method : lecturerLogin

//----------------------------------------------------------------------------------------------------
	
	public ArrayList<StudentInfoDTO> studentLogin() {
				
		try {
			
			String sql = "SELECT name FROM tblStudentInfo";
			ResultSet rs = stat.executeQuery(sql);
			
			ArrayList<StudentInfoDTO> studentList = new ArrayList<StudentInfoDTO>();
			
			while (rs.next()) {	
				
				StudentInfoDTO studentDto = new StudentInfoDTO();				
				studentDto.setName(rs.getString("name"));				
				studentList.add(studentDto);	
				
			}
			
			return studentList;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}//method : studentLogin
	
}//Class : LoginDAO


